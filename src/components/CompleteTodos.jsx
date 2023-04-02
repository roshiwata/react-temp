import React, { useState } from "react";

export const CompleteTodos = (props) => {
  const { todos, onClickBack } = props;
  return (
    <div className="complete-area">
      <p className="title">完了のTodo</p>
      <div>
        {todos.map((todo, index) => {
          return (
            <ul key={todo} className="list-row">
              <li>{todo}</li>
              <button onClick={() => onClickBack(index)}>戻す</button>
            </ul>
          );
        })}
      </div>
    </div>
  );
};
