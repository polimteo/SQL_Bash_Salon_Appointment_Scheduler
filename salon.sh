#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~~~ POLIM SALON ~~~~~\n"

echo -e "Welcome to Polim Salon, how can I help you?"

MAIN_MENU() {

if [[ $1 ]]
  then
  echo -e "\n$1"
fi

echo -e "\n1) cut\n2) color\n3) perm\n4) style\n5) trim"

read SERVICE_ID_SELECTED

case $SERVICE_ID_SELECTED in
  1) CUT;;
  2) COLOR;;
  3) PERM;;
  4) STYLE;;
  5) TRIM;;
  *) MAIN_MENU "I could not find that service. What would you like today?";;
esac 
}


CUT() {

SERVICE_ID_SELECTED=$($PSQL "SELECT service_id FROM services WHERE name = 'cut'")

}

COLOR() {

SERVICE_ID_SELECTED=$($PSQL "SELECT service_id FROM services WHERE name = 'color'")

}

PERM() {

SERVICE_ID_SELECTED=$($PSQL "SELECT service_id FROM services WHERE name = 'perm'")

}

STYLE() {

SERVICE_ID_SELECTED=$($PSQL "SELECT service_id FROM services WHERE name = 'style'")

}

TRIM() {

SERVICE_ID_SELECTED=$($PSQL "SELECT service_id FROM services WHERE name = 'trim'")

}

MAIN_MENU

echo -e "\nWhat's your phone number?"
read CUSTOMER_PHONE

#get customer info
CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'")

#if customer name doesn't exist
if [[ -z $CUSTOMER_NAME ]]

  #get new customer name
  then
  echo -e "\nI don't have a record for that phone number, what's your name?"
  read CUSTOMER_NAME

  #insert new customer
  INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")

fi

SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id = $SERVICE_ID_SELECTED")

#get appointment time
echo -e "\nWhat time would you like your $SERVICE_NAME, $CUSTOMER_NAME?"
read SERVICE_TIME

#get customer id
CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")
  
#insert new appointment
INSERT_APPOINTMENT_TIME=$($PSQL "INSERT INTO appointments(time, service_id, customer_id) VALUES('$SERVICE_TIME', $SERVICE_ID_SELECTED, $CUSTOMER_ID)")

echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."


