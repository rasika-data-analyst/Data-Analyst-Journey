{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "0202f458-9d14-4d39-bd6a-601246c83ba6",
   "metadata": {},
   "outputs": [],
   "source": [
    "# if Statement\n",
    "\n",
    "# Definition:\n",
    "# The if statement executes a block of code only when the condition is True.\n",
    "\n",
    "# Syntax\n",
    "\n",
    "if condition:\n",
    "    statement\n",
    "\n",
    "# Example 1\n",
    "\n",
    "age = 20\n",
    "\n",
    "if age >= 18:\n",
    "    print(\"Eligible to vote\")\n",
    "\n",
    "# Example 2\n",
    "\n",
    "marks = 85\n",
    "\n",
    "if marks >= 35:\n",
    "    print(\"Pass\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "e8ff671c-9b37-46fb-8ef9-72b194a510cc",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Eligible to Vote\n"
     ]
    }
   ],
   "source": [
    "age = 20\n",
    "\n",
    "if age >= 18:\n",
    "    print(\"Eligible to Vote\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "ce5bca36-7a93-4fc4-90d2-cbafd4f13548",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Pass\n"
     ]
    }
   ],
   "source": [
    "marks = 70\n",
    "\n",
    "if marks >= 35:\n",
    "    print(\"Pass\")\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "ff28769f-f2c8-406d-bdd8-a0a34240f37b",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Good salary\n"
     ]
    }
   ],
   "source": [
    "salary = 25000\n",
    "\n",
    "if salary > 20000:\n",
    "    print(\"Good salary\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "ddccd2e7-27d9-48d0-9641-f992ebaa115a",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Hot Weather\n"
     ]
    }
   ],
   "source": [
    "temperature = 38\n",
    "\n",
    "if temperature > 35:\n",
    "    print(\"Hot Weather\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "04ea3526-f9de-469c-b85b-ade6e84bd187",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Positive Number\n"
     ]
    }
   ],
   "source": [
    "number = 15\n",
    "\n",
    "if number > 0:\n",
    "    print(\"Positive Number\")"
   ]
  },
  {
   "cell_type": "raw",
   "id": "b38d5a38-b47c-47a4-aaa1-5284812efa1a",
   "metadata": {},
   "source": [
    "\n",
    "What is an if statement?\n",
    "executes the block of code when conditions are true\n",
    "When does an if statement execute?\n",
    "executes the block of code when conditions are true\n",
    "\n",
    "What happens if the condition is False?\n",
    "If the condition is False, Python skips that block.\n",
    "Why is indentation important in Python?\n",
    "Python uses indentation to know which code belongs to the if block.\n",
    "What is the difference between = and ==?\n",
    "= → Assignment\n",
    "== → Comparison"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "3ea98030-bcbc-40be-bd34-5d2b04276927",
   "metadata": {},
   "outputs": [],
   "source": [
    "        Condition\n",
    "            │\n",
    "      ┌─────┴─────┐\n",
    "      │           │\n",
    "    True       False\n",
    "      │           │\n",
    "   if block   else block\n",
    "      │           │\n",
    "      └─────┬─────┘\n",
    "            │\n",
    "           End"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "9df3a712-b09c-484f-bb37-969ce37952e8",
   "metadata": {},
   "outputs": [],
   "source": [
    "# if...else Statement\n",
    "\n",
    "# Definition:\n",
    "# Executes one block if the condition is True,\n",
    "# otherwise executes the else block.\n",
    "\n",
    "# Example 1\n",
    "\n",
    "age = 20\n",
    "\n",
    "if age >= 18:\n",
    "    print(\"Eligible to Vote\")\n",
    "else:\n",
    "    print(\"Not Eligible to Vote\")\n",
    "\n",
    "\n",
    "# Example 2\n",
    "\n",
    "marks = 30\n",
    "\n",
    "if marks >= 35:\n",
    "    print(\"Pass\")\n",
    "else:\n",
    "    print(\"Fail\")\n",
    "\n",
    "\n",
    "# Example 3\n",
    "\n",
    "number = 10\n",
    "\n",
    "if number % 2 == 0:\n",
    "    print(\"Even\")\n",
    "else:\n",
    "    print(\"Odd\")"
   ]
  },
  {
   "cell_type": "raw",
   "id": "e6d8bc9e-5643-4d1d-993e-091148f46dd7",
   "metadata": {},
   "source": [
    "1. What is the purpose of an if...else statement?\n",
    "if runs only when condition is true or else will executes \n",
    "2. What is the difference between if and if...else?\n",
    "if runs only when condition is true python skip if block is false but when we use else if it is false else will executes \n",
    "3. Will the else block always execute?\n",
    "no \n",
    "4. Can an if...else statement have more than two outcomes?\n",
    "yes \n",
    "(Think before answering—we'll discuss this in the next topic.)\n",
    "\n",
    "5. Which statement is used when you want to perform one action if a condition is True and another action if it is False?\n",
    "if----else"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "ac4b1e0c-3807-4dcd-97c5-05b5d232b0ed",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "not Eligible to Vote \n"
     ]
    }
   ],
   "source": [
    "age = 16\n",
    "\n",
    "if age >= 18:\n",
    "    print(\"Eligible to Vote\")\n",
    "else:\n",
    "    print(\"not Eligible to Vote \")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "b1762f71-6c88-4f89-8494-ddfba66672eb",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "pass\n"
     ]
    }
   ],
   "source": [
    "marks = 75\n",
    "\n",
    "if marks >= 35:\n",
    "    print(\"pass\")\n",
    "else:\n",
    "    print(\"fail\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "aea13e33-1623-4875-b244-71857f24f450",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "not eligble for loan \n"
     ]
    }
   ],
   "source": [
    "salary = 18000\n",
    "\n",
    "if salary > 20000:\n",
    "    print(\"eligble for loan\")\n",
    "else:\n",
    "    print(\"not eligble for loan \")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "0999c447-7882-4302-80b0-b4136b120660",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "odd\n"
     ]
    }
   ],
   "source": [
    "number = 25\n",
    "\n",
    "if number %2 == 0:\n",
    "    print(\"even\")\n",
    "else:\n",
    "    print(\"odd\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "d9da84ec-ccf3-4240-b878-d8966c9c1e54",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "pleasant weather\n"
     ]
    }
   ],
   "source": [
    "temperature = 28\n",
    "\n",
    "if temperature > 35:\n",
    "    print(\"Hot Weather\")\n",
    "else:\n",
    "    print(\"pleasant weather\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "04fac7ca-9173-44d7-988f-4b89a9782209",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Grade A\n"
     ]
    }
   ],
   "source": [
    "marks = 95\n",
    "\n",
    "if marks >= 90:\n",
    "    print(\"Grade A\")\n",
    "\n",
    "elif marks >= 75:\n",
    "    print(\"Grade B\")\n",
    "\n",
    "elif marks >= 35:\n",
    "    print(\"Pass\")\n",
    "\n",
    "else:\n",
    "    print(\"fail\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "709080de-c941-40a7-8f09-24293d1b23a8",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Adult\n"
     ]
    }
   ],
   "source": [
    "age = 35\n",
    "\n",
    "if age >= 60:\n",
    "    print(\"Senior Citizen\")\n",
    "\n",
    "elif age >= 18:\n",
    "    print(\"Adult\")\n",
    "\n",
    "elif age >= 13:\n",
    "    print(\"Teenager\")\n",
    "\n",
    "else:\n",
    "    print(\"Child\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "7bfd7f9a-49d9-4985-a129-3fbca1a126e6",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "High Salary\n"
     ]
    }
   ],
   "source": [
    "salary = 155000\n",
    "\n",
    "if salary >= 100000:\n",
    "    print(\"High Salary\")\n",
    "\n",
    "elif salary >= 50000:\n",
    "    print(\"Medium Salary\")\n",
    "\n",
    "else:\n",
    "    print(\"Low Salary\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "8ae7e796-de3a-4296-998e-8b50c401ac5e",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Pleasant\n"
     ]
    }
   ],
   "source": [
    "temp = 25\n",
    "\n",
    "if temp >= 40:\n",
    "    print(\"Very Hot\")\n",
    "\n",
    "elif temp >= 30:\n",
    "    print(\"Hot\")\n",
    "\n",
    "elif temp >= 20:\n",
    "    print(\"Pleasant\")\n",
    "\n",
    "else:\n",
    "    print(\"Cold\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "a7ce48fb-7cc8-468b-a37e-e224f98ea464",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Excellent\n"
     ]
    }
   ],
   "source": [
    "percentage = 97\n",
    "\n",
    "if percentage >= 90:\n",
    "    print(\"Excellent\")\n",
    "\n",
    "elif percentage >= 75:\n",
    "    print(\"Very Good\")\n",
    "\n",
    "elif percentage >= 50:\n",
    "    print(\"Good\")\n",
    "\n",
    "else:\n",
    "    print(\"Needs Improvement\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "0e4e01bd-c84c-43e4-b2e0-94327d4e6b96",
   "metadata": {},
   "outputs": [],
   "source": [
    "Nested if is commonly used in:\n",
    "\n",
    "Login systems\n",
    "ATM machines\n",
    "Banking applications\n",
    "Loan approval\n",
    "Employee promotions\n",
    "User authentication"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "47b797a6-4f41-4f9a-ad8d-f40c87dc0271",
   "metadata": {},
   "outputs": [],
   "source": [
    "What is a nested if statement?\n",
    "A nested if means writing an if statement inside another if statement.\n",
    "\n",
    "When do we use a nested if?\n",
    "It is used when one condition depends on another condition.\n",
    "What is the difference between elif and nested if?\n",
    "elif Used for multiple independent conditions Executes only one matching block\n",
    "nested if Used when one condition depends on another.Checks an inner condition only if the outer condition is True\n",
    "Can we write an if inside an else block?\n",
    "no true and false conditions will be confused if we write if inside else \n",
    "    \n",
    "Give one real-life example where nested if is useful.\n",
    "Login systems\n",
    "ATM machines\n",
    "Banking applications"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 25,
   "id": "5b080b29-e5ad-454f-9919-68eec6068708",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Aadhar required\n"
     ]
    }
   ],
   "source": [
    "age = 19\n",
    "has_aadhaar = False\n",
    "\n",
    "if age >= 18:\n",
    "    if has_aadhaar:\n",
    "        print(\"Eligible to Vote\")\n",
    "    else:\n",
    "        print(\"Aadhar required\")\n",
    "else:\n",
    "    print(\"Not Eligible\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 27,
   "id": "6077a6be-71b5-4b3d-a2b7-87a430f373c1",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Login Successful\n"
     ]
    }
   ],
   "source": [
    "username = \"admin\"\n",
    "password = \"1234\"\n",
    "\n",
    "\n",
    "if username == \"admin\":\n",
    "    if password == \"1234\":\n",
    "        print(\"Login Successful\")\n",
    "    else:\n",
    "        print(\"Incorrect Password\")\n",
    "else:\n",
    "   print( \"Invalid Username\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 33,
   "id": "54102848-e1ce-416c-9334-d9a4c63ebbc4",
   "metadata": {},
   "outputs": [
    {
     "name": "stdin",
     "output_type": "stream",
     "text": [
      "Enter the marks 89\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Admission Confirmed\n"
     ]
    }
   ],
   "source": [
    "marks = int(input(\"Enter the marks\"))\n",
    "interview = True\n",
    "\n",
    "if marks >= 75:\n",
    "    if interview == True:\n",
    "        print(\"Admission Confirmed\")\n",
    "    else:\n",
    "        print(\"Interview Required\")\n",
    "\n",
    "else:\n",
    "    print(\"Admission Rejected\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 35,
   "id": "cffe12ce-54b3-486c-8133-8d0a15771662",
   "metadata": {},
   "outputs": [
    {
     "name": "stdin",
     "output_type": "stream",
     "text": [
      "Enter the salary 90000\n",
      "Enter the experience 5\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Loan Approved\n"
     ]
    }
   ],
   "source": [
    "salary = float(input(\"Enter the salary\"))\n",
    "experience = int(input(\"Enter the experience\"))\n",
    "\n",
    "if salary >= 50000:\n",
    "    if experience >= 3:\n",
    "        print(\"Loan Approved\")\n",
    "    else:\n",
    "        print(\"More Experience Required\")\n",
    "\n",
    "else:\n",
    "    print(\"salary Not Eligible\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 40,
   "id": "258a5573-62ab-4473-8c7d-98ca79a48453",
   "metadata": {},
   "outputs": [
    {
     "name": "stdin",
     "output_type": "stream",
     "text": [
      "Enter the experience 6\n",
      "Enter the experience 4\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Bonus Approved\n"
     ]
    }
   ],
   "source": [
    "experience = int(input(\"Enter the experience\"))\n",
    "rating = int(input(\"Enter the experience\"))\n",
    "\n",
    "if experience >= 5:\n",
    "    if rating >= 4:     \n",
    "        print(\"Bonus Approved\")       \n",
    "    else:\n",
    "        print(\"Rating Too Low\")\n",
    "else:\n",
    "     print(\"Experience Too Low\")"
   ]
  },
  {
   "cell_type": "raw",
   "id": "19d8bc7e-0c18-4c42-9bf7-b5c76efc924d",
   "metadata": {},
   "source": [
    "Check whether a person can donate blood.\n",
    "Check whether a student is eligible for a scholarship.\n",
    "Check if a customer gets free delivery based on order amount.\n",
    "Calculate employee bonus based on salary.\n",
    "Check whether a movie ticket gets a child, adult, or senior discount.\n",
    "Build a simple calculator using if...elif...else.\n",
    "Check whether a year is a leap year.\n",
    "Find the largest of three numbers."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 42,
   "id": "e0f64ed0-0eb4-41f5-8dcc-db72a5941620",
   "metadata": {},
   "outputs": [
    {
     "name": "stdin",
     "output_type": "stream",
     "text": [
      "Enter the blood group o-ve\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "universal donor\n"
     ]
    }
   ],
   "source": [
    "# Check whether a person can donate blood.\n",
    "\n",
    "bloodgroup = input(\"Enter the blood group\")\n",
    "age = int(input(\"Enter Age: \"))\n",
    "weight = int(input(\"Enter Weight: \"))\n",
    "\n",
    "if bloodgroup == \"o-ve\" and age >= 18 and weight >= 50:\n",
    "    print(\"Eligible to Donate Blood\")\n",
    "else:\n",
    "    print(\"Not Eligible\")\n",
    "\n",
    "\n",
    "\n",
    "\n",
    "bloodgroup = input(\"Enter the blood group\")\n",
    "\n",
    "if bloodgroup == \"o-ve\":\n",
    "    print(\"Universal donor\")\n",
    "elif bloodgroup == \"o+ve\":\n",
    "    print(\"can donate blood\")\n",
    "else:\n",
    "    print(\"can not donate\")\n",
    "        "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 46,
   "id": "eccbcf3a-6a38-4af0-959b-e34c1187ee28",
   "metadata": {},
   "outputs": [
    {
     "name": "stdin",
     "output_type": "stream",
     "text": [
      "Enter the marks 90\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "eligible for a scholarship\n"
     ]
    }
   ],
   "source": [
    "# Check whether a student is eligible for a scholarship.\n",
    "\n",
    "marks = float(input(\"Enter the marks\"))\n",
    "\n",
    "if marks >= 90:\n",
    "    print(\"eligible for a scholarship\")\n",
    "else:\n",
    "    print(\"not eligible for a scholarship\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 49,
   "id": "28fe97f7-755d-46c2-a153-9fd663da9239",
   "metadata": {},
   "outputs": [
    {
     "name": "stdin",
     "output_type": "stream",
     "text": [
      "Enter the amount 2000\n"
     ]
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "free delivery\n"
     ]
    }
   ],
   "source": [
    "# Check if a customer gets free delivery based on order amount.\n",
    "\n",
    "order_amount = float(input(\"Enter the amount\"))\n",
    "\n",
    "if order_amount > 1500:\n",
    "    print(\"free delivery\")\n",
    "else:\n",
    "    print(\"pay charges for delivery\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 55,
   "id": "f5f3ee24-d522-4ac7-abf0-e4acfd1fadb2",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "6500.0\n"
     ]
    }
   ],
   "source": [
    "#Calculate employee bonus based on salary.\n",
    "\n",
    "salary = 65000\n",
    "\n",
    "if salary > 100000:\n",
    "    bonus_percentage = 0.05\n",
    "elif salary >= 50000:\n",
    "    bonus_percentage = 0.10\n",
    "else:\n",
    "    bonus_percentage = 0.15\n",
    "\n",
    "bonus = salary * bonus_percentage\n",
    "print(bonus)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 56,
   "id": "a892464a-2a14-4f75-aec9-061c6b24af43",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Ticket Category: Adult with Student Discount (20% off)\n"
     ]
    }
   ],
   "source": [
    "# Check whether a movie ticket gets a child, adult, or senior discount.\n",
    "age = 22\n",
    "has_student_id = True\n",
    "\n",
    "if age < 12:\n",
    "    print(\"Ticket Category: Child Discount (50% off)\")\n",
    "elif age >= 65:\n",
    "    print(\"Ticket Category: Senior Discount (40% off)\")\n",
    "else:\n",
    "    # Nested if to check for adult sub-categories\n",
    "    if has_student_id:\n",
    "        print(\"Ticket Category: Adult with Student Discount (20% off)\")\n",
    "    else:\n",
    "        print(\"Ticket Category: Standard Adult (Full Price)\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 57,
   "id": "a331e74c-2890-4108-a8fc-4b262b62f732",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "12 / 4 = 3.0\n"
     ]
    }
   ],
   "source": [
    "num1 = 12\n",
    "num2 = 4\n",
    "operation = \"/\"  # Options: +, -, *, /\n",
    "\n",
    "if operation == \"+\":\n",
    "    result = num1 + num2\n",
    "    print(f\"{num1} + {num2} = {result}\")\n",
    "elif operation == \"-\":\n",
    "    result = num1 - num2\n",
    "    print(f\"{num1} - {num2} = {result}\")\n",
    "elif operation == \"*\":\n",
    "    result = num1 * num2\n",
    "    print(f\"{num1} * {num2} = {result}\")\n",
    "elif operation == \"/\":\n",
    "    # Nested if to prevent division by zero\n",
    "    if num2 != 0:\n",
    "        result = num1 / num2\n",
    "        print(f\"{num1} / {num2} = {result}\")\n",
    "    else:\n",
    "        print(\"Error: Division by zero is not allowed.\")\n",
    "else:\n",
    "    print(\"Invalid operator selected.\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 58,
   "id": "49c5d1af-cb57-45b8-8601-9d59c51a6ad5",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "2024 is a leap year.\n"
     ]
    }
   ],
   "source": [
    "year = 2024\n",
    "\n",
    "if year % 4 == 0:\n",
    "    if year % 100 == 0:\n",
    "        if year % 400 == 0:\n",
    "            print(f\"{year} is a leap year.\")\n",
    "        else:\n",
    "            print(f\"{year} is NOT a leap year.\")\n",
    "    else:\n",
    "        print(f\"{year} is a leap year.\")\n",
    "else:\n",
    "    print(f\"{year} is NOT a leap year.\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 59,
   "id": "cc01aa72-5e4f-4785-8d4f-f46987ce72d4",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "The largest number among 45, 72, and 12 is: 72\n"
     ]
    }
   ],
   "source": [
    "a = 45\n",
    "b = 72\n",
    "c = 12\n",
    "\n",
    "if a >= b:\n",
    "    if a >= c:\n",
    "        largest = a\n",
    "    else:\n",
    "        largest = c\n",
    "else:\n",
    "    if b >= c:\n",
    "        largest = b\n",
    "    else:\n",
    "        largest = c\n",
    "\n",
    "print(f\"The largest number among {a}, {b}, and {c} is: {largest}\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "a2d15d44-8dc4-431a-a065-55861e31b233",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python [conda env:base] *",
   "language": "python",
   "name": "conda-base-py"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.13.9"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
