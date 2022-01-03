(ns robot-simulator
  (:require [clojure.string :as str]))

(defn robot [coordinates bearing] 
  {:coordinates coordinates :bearing bearing})

(def turn-right {:north :east :east :south :south :west :west :north})

(def turn-left {:north :west :east :north :south :east :west :south})

(defn advance [bearing {:keys [x y]}]
  (case bearing
    :north {:x x :y (inc y)}
    :south {:x x :y (dec y)}
    :east {:x (inc x) :y y}
    :west {:x (dec x) :y y}))

(defn do-action [{:keys [bearing coordinates]} action]
  (case action
    \R {:bearing (turn-right bearing) :coordinates coordinates}
    \L {:bearing (turn-left bearing) :coordinates coordinates}
    \A {:bearing bearing :coordinates (advance bearing coordinates)}))

(defn simulate [path robot]
  (reduce do-action robot path))