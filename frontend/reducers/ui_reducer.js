import { combineReducers } from 'redux';
import modalReducer from  "./modal_reducer";
import dropDownReducer from "./drop_down_reducer";

export default combineReducers({
  modal: modalReducer,
  dropDown: dropDownReducer,
});