import React from "react";
import ReactDOM from "react-dom/client";
import App from "../components/App";
import { createBrowserRouter, RouterProvider } from "react-router-dom";

const router = createBrowserRouter([{ path: "*", element: <App /> }]);

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.createRoot(document.getElementById("root")).render(
    <RouterProvider router={router} />
  );
});
