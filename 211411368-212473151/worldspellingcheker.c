#define _CRT_SECURE_NO_WARNINGS
#include <conio.h>
#include <math.h>
#include<malloc.h>
#include <string.h>
#include"HashTable.h"
#include"WordSpellingChecker.h"

char* deleteCharInIndex(char* word, int index) {
	char* string = malloc(sizeof(char) * (strlen(word) + 1));
	strcpy(string, word);
	for (index; word[index] != '\0'; index++)
	{
		string[index] = word[index + 1];
	}
	return string;
}

char* addCharInIndex(char* word, int index, int ascii_letter) {
	char* string = malloc(sizeof(char) * (strlen(word) + 2));

	strcpy(string, word);
	strcat(string, " ");
	string[index] = ascii_letter;
	for (index; word[index] != '\0'; index++)
	{
		string[index + 1] = word[index];
	}
	return string;
}

int isWordInDictionary(HashTable* dictionaryTable, char* word) {

if (word != NULL) {
	if (search(dictionaryTable, word) == 1)
	{
		return 1;
	}
}else {
	printf("wrong !! string is NULL ");
	return 0;
	}
	return 0;
}


LinkedList* addSpaceCheck(HashTable* dictionaryTable, char* word) {
	int i = 0;
	int j, k;
	char string1[50], string2[50];
	strcpy(string1, word);
	LinkedList* temp = NULL;
	while (word[i + 1] != '\0')
	{
		string1[i + 1] = '\0';
		if (isWordInDictionary(dictionaryTable, string1) == 1) {
			for (j = i + 1, k = 0; word[j] != '\0'; j++, k++)
			{
				string2[k] = word[j];
			}
			string2[k] = '\0';
			if (isWordInDictionary(dictionaryTable, string2) == 1)
			{
				string1[i + 1] = ' ';
				string1[i + 2] = '\0';
				strcat(string1, string2);
				if (temp == NULL)
				{
					temp = BuildNode(string1);
				}
				else {
					temp = addToEND(temp, string1);
				}
			}
		}
		strcpy(string1, word);
		i++;
	}
	return temp;

}



LinkedList* replaceCharacterCheck(HashTable* dictionaryTable, char* word) {
	int i = 0;
	char string[50];
	LinkedList* temp = NULL;
	strcpy(string, word);
	while (word[i] != '\0') {
		for (int j = 97; j < 123; j++)// the code ascii of low letter is  97 -123
		{
			string[i] = j;
			if ((strcmp(string, word) != 0) && (isWordInDictionary(dictionaryTable, string) == 1)) {
				if (temp == NULL)
				{
					temp = BuildNode(string);
				}
				else
				{
					temp = addToEND(temp, string);
				}
			}
		}
		i++;
		strcpy(string, word);
	}
	return temp;
}


LinkedList* deleteCharacterCheck(HashTable* dictionaryTable, char* word) {
	
	char* string;
	LinkedList* temp = NULL;
	for (int i=0; word[i] != '\0'; i++) {
		string = deleteCharInIndex(word, i);
		if (isWordInDictionary(dictionaryTable, string) == 1)
		{
			if (temp != NULL)
			{
				temp = addToEND(temp, string);
			}
			else
			{
				temp = BuildNode(string);
			}
		}
	}
	return temp;

}



LinkedList* addCharacterCheck(HashTable* dictionaryTable, char* word)
{
	char*string;
	LinkedList* temp = NULL;
	for (int i=0; i <= strlen(word); i++)
	{
		for (int j = 97; j < 123; j++)    //the for in range low letter 97 to 123
		{
			string = addCharInIndex(word, i, j);
			if (isWordInDictionary(dictionaryTable, string) == 1)
			{
				if (temp != NULL)
				{
					temp = addToEND(temp, string);
				}
				else {

				    temp = BuildNode(string);
				}
			}
		}
	}
	return temp;
}


LinkedList* switchAdjacentCharacterCheck(HashTable* dictionaryTable, char* word) {
	
	
	char string[50];
	char c;
	LinkedList* temp = NULL;
	strcpy(string, word);
	for (int i=0; i < strlen(word); i++)
	{
		c = string[i];
		string[i] = string[i + 1];
		string[i + 1] = c;
		if (isWordInDictionary(dictionaryTable, string) == 1)
		{
			if (temp != NULL)
			{
				temp = addToEND(temp, string);
			}
			else {

				temp = BuildNode(string);
			}
		}
		strcpy(string, word);
	}
	return temp;
}



LinkedList* getWordSuggestions(HashTable* dictionaryTable, char* word) {
	LinkedList* temp = addSpaceCheck(dictionaryTable, word);
	if (temp)
		temp = addListToEND(temp, replaceCharacterCheck(dictionaryTable, word));
	temp = replaceCharacterCheck(dictionaryTable, word);

	if (temp)
		temp = addListToEND(temp, deleteCharacterCheck(dictionaryTable, word));
	temp = deleteCharacterCheck(dictionaryTable, word);

	if (temp)
		temp = addListToEND(temp, addCharacterCheck(dictionaryTable, word));
	temp = addCharacterCheck(dictionaryTable, word);

	if (temp)
		temp = addListToEND(temp, switchAdjacentCharacterCheck(dictionaryTable, word));
	temp = switchAdjacentCharacterCheck(dictionaryTable, word);



	return temp;
}



SpellingSuggestion* insertSpellList(SpellingSuggestion* oldList, HashTable* ht, char* word) {
	SpellingSuggestion* temp = (SpellingSuggestion*)malloc(sizeof(SpellingSuggestion));
	temp->originalWord = malloc(sizeof(char) * (strlen(word) + 1));
	strcpy(temp->originalWord, word);
	temp->next = NULL;
	temp->suggestions = getWordSuggestions(ht, temp->originalWord);
	if (oldList == NULL) {
		oldList = temp;
		return oldList;
	}
	else {
		SpellingSuggestion* temp2 = oldList;
		if (strcmp(temp2->originalWord, word) == 0)
		{
			return oldList;
		}
		while (temp2->next != NULL) {
			temp2 = temp2->next;
			if (strcmp(temp2->originalWord, word) == 0)
			{
				return oldList;
			}

		}
		temp2->next = temp;
		return oldList;
	}
	
}