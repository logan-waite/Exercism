(ns robot-simulator)

(defn robot 
  [coordinates bearing] 
  {:coordinates coordinates :bearing bearing})

(def turn-right {:north :east :east :south :south :west :west :north})

(def turn-left {:north :west :east :north :south :east :west :south})

(defn advance 
  [{:keys [x y]} bearing]
  (case bearing
    :north {:x x :y (inc y)}
    :south {:x x :y (dec y)}
    :east {:x (inc x) :y y}
    :west {:x (dec x) :y y}))

(defn do-action 
  [{:keys [bearing] :as robot} action]
  (case action
    \R (update robot :bearing turn-right)
    \L (update robot :bearing turn-left)
    \A (update robot :coordinates advance bearing)))

(defn simulate [path robot]
  (reduce do-action robot path))