# Demonstration of partials in Shiny

Demonstrates a technique of separating out individual partials/controllers for different areas of a Shiny app.

All of the "partials" (the UI for each area) is loaded when the user navigates to it. All of the "controllers" (the logic inside the app) are loaded at startup (though none of the outputs/reactives that they define will actually execute until they are needed, this is just a natural consequence of how reactivity works in Shiny).

Note that partials and controllers are not namespaced; if you have inputs/outputs that are named the same in two different partials, they will collide. Same thing with variables, reactives, etc. that you define in controllers.