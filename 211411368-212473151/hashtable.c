#define _CRT_SECURE_NO_WARNINGS
#include<string.h>
#include<math.h>
#include"HashTable.h"
#include"LinkedList.h"

int asciiStringHashFunction(char* str) {

	return (int)(str[0]);
}

int accumulateStringHashFunction(char* str) {
	int sum = 0;
	if (str != NULL) {
		for (int i = 0; i < strlen(str); i++) {
			sum += (int)(str[i]);
		}
		return sum;
	}
	else {
		return 0;
	}
}

int improvedHashFunction(char* str) {
	int sum = 0;

	for (int i = 0; i < strlen(str); i++)
	{
		sum += (int)(str[i]) * ((int)pow(31, strlen(str) - 1 - i));
	}

	return sum;
}



HashTable* initTable(int tableSize, int hashFunction) {
	HashTable* ht = (HashTable*)malloc(sizeof(HashTable));
	ht->hashTable = (HashTableElement*)malloc(tableSize*sizeof(HashTableElement));
	for (int i = 0; i < tableSize; i++)
	{
		ht->hashTable[i].key = i;
		ht->hashTable[i].chain = NULL;

	}
	ht->tableSize = tableSize;
	ht->hashFunction = hashFunction;
	ht->cellsTaken = 0;
	ht->numOfElements = 0;

	

	return ht;
}


int hash(char* str, HashTable* ht) {
	
	if (ht->hashFunction == 1) {
		return  asciiStringHashFunction(str) % ht->tableSize;
	}
	else if (ht->hashFunction == 2) {
		return  accumulateStringHashFunction(str) % ht->tableSize;
	}
	else if (ht->hashFunction == 3) {
		if (improvedHashFunction(str) < 0) {
			return improvedHashFunction(str) * -1 % ht->tableSize;
		}
		else {
			return improvedHashFunction(str) % ht->tableSize;
		}

	}
	else {
		printf("Please Enter number for range 1-3 !!! wrong !!!");
		return -1;
	}

}

int insert(HashTable* ht, char* str) {
	
	int index;
	if (str != NULL) {
		index = hash(str, ht);
		if (ht->hashTable[index].chain == NULL)   /// if in this key no element///the index null 
		{
			ht->hashTable[index].chain = BuildNode(str);
			ht->cellsTaken++;
			ht->numOfElements++;
			return 1;
		}
		// if in this key have element 
		else {
			LinkedList* new_ll = ht->hashTable[index].chain;
			while (new_ll != NULL) {
				// if this value is alrady in the table 
				if (strcmp(new_ll->data,str) == 0 )
				{
					printf("this element in the table\n");
					return 0;
				}
				new_ll = new_ll->next;
			}
			//if no value in this table add the value to add//
			ht->hashTable[index].chain = addToEND(ht->hashTable[index].chain, str);
			ht->numOfElements++;
			return 1;
		}
	}
	else {
		printf("wrong !! string is NULL ");
		return 0;
	}
}

int search(HashTable* ht, char* str) {

	int index;
	if (str != NULL) {
		index = hash(str, ht);
		LinkedList* new_L = ht->hashTable[index].chain;
		while (new_L != NULL) {
			if (strcmp(new_L->data, str) == 0)
			{
				return 1;
			}
			new_L = new_L->next;
		}
	}
	else {
		printf("wrong !! string is NULL ");
		return 0;
	}
	return 0;
}

int deleteElement(HashTable* ht, char* str) {
	if (str != NULL) {
		if (search(ht, str) != 0)
		{
			ht->hashTable[hash(str, ht)].chain = DeleteElement(ht->hashTable[hash(str, ht)].chain, str);
			return 1;
		}
		else
		{
			printf("the key %s not on the table", str);
			return 0;
		}
	}
	else {

		printf("wrong !! string is NULL ");
		return 0;
	}
}


