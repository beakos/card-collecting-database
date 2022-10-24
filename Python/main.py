import csv

with open('card_data.csv', 'w', newline="") as file:
    myFile = csv.writer(file)  
    myFile.writerow(["CardID","CardName","CardYear","CardBrand","CardNotes"]) # Headings
    
    print("Colums to fill in are: | ID | Name | Year | Card Brand | Notes.")
    print("Choose range of 1 - 999 or 0 to exit.")
    CardValues = int(input("Enter how many entries of cards you would like to input: ")) # Amount of entries

    for i in range(CardValues): # Card inputs
        identification = input("Card Input "+ str(i+1) +": Enter Card ID if applicable: ")
        name = input("Card Input "+ str(i+1) +": Enter Card Name or Card Identifier: ")
        year = input("Card Input "+ str(i+1) +": Enter the print year of the card: ")
        brand = input("Card Input "+ str(i+1) +": Enter the card brand: ")
        notes = input("Card Input "+ str(i+1) +": Enter any remaining notes about the card: ")
        
        myFile.writerow([identification, name, year, brand, notes]) # Assign user inputs into following headers