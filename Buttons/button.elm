import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main = Html.beginnerProgram {model = model, view = view, update = update}

type alias Model = Int

model : Model
model = 0

type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg m = case msg of
    Increment -> m + 1
    Decrement -> m - 1

view : Model -> Html Msg
view model = div [] [ button [ onClick Decrement ] [ text "-" ]
                    , div [] [ text (toString model) ]
                    , button [ onClick Increment]  [ text "+" ]
                    ]
