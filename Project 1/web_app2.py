import streamlit as st
import numpy as np
import tensorflow as tf
from PIL import Image
import matplotlib.pyplot as plt
import random

st.title("ROCK PAPER SCISSORS")
st.header("Detect Hand Sign")
st.text("Upload Image")
st.header("Start Game:")

start = st.button("Start")
choice = ""
if start:
    choices = ["rock", "paper", "scissor"]
    computer = random.choices(choices, weights=[1, 1, 1], k=1)[0]
    choice = computer
    st.write("TAKE PHOTO")

img = st.camera_input("Upload here")


def load_labels(filename):
    with open(filename, 'r') as f:
        return [line.strip() for line in f.readlines()]


interpreter = tf.lite.Interpreter(model_path="model2.tflite")
interpreter.allocate_tensors()
labels = load_labels("label.txt")
input_details = interpreter.get_input_details()
output_details = interpreter.get_output_details()
floating_model = True
if img:
    # st.image(img)
    image = Image.open(img).resize((150, 150))
    st.image(img)
    image = tf.cast(image, tf.float32)
    image = np.expand_dims(image, axis=0)
    interpreter.set_tensor(input_details[0]['index'], image)
    interpreter.invoke()
    output_data = interpreter.get_tensor(output_details[0]['index'])
    results = np.squeeze(output_data)
    top_k = results.argsort()[-5:][::-1]
    out = ""
    for i in top_k:
        if floating_model:
            print('{:08.6f}: {}'.format(float(results[i]), labels[i]))
            st.text(labels[i])
            out = labels[i]
            break
        else:
            print('{:08.6f}: {}'.format(float(results[i] / 255.0), labels[i]))

    if(out == choice):
        st.write("WON")
    else:
        st.write("LOSE")
