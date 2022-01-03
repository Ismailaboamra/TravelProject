#define _CRT_SECURE_NO_WARNINGS
#include "WordSpellingChecker.h"

int parseWordsToTable(char* path, HashTable* ht);
SpellingSuggestion* spellingCheck(char* text);
/*
	Add help functions here...
*/
void printSpellingSuggestions(SpellingSuggestion* spell_list);
int main()
{
	char* text = "iam afraid youare about to become teh immexdiate pst president of teh eing alive club ha ha glados";
	SpellingSuggestion* spellingSuggestions = spellingCheck(text);
	printSpellingSuggestions(spellingSuggestions);
	return 0;
}


int parseWordsToTable(char* path, HashTable* ht) {
	
	FILE* file = fopen(path, "r");
	if (file == NULL)
	{
		printf("cant open file \n");
		return 0;
	}

	char str[100];
	for (int i=1; fgets(str, sizeof(str), file) != NULL; i++)
	{
		int j = 0;
		while ((str[j] != '\n') && (str[j] != '\0'))
		{
			j++;
		}
		str[j] = '\0';
		insert(ht, str);
	}
	fclose(file);
	return 1;
}



SpellingSuggestion* spellingCheck(char* text) {
	SpellingSuggestion* temp = NULL;
	
	int i = 0,j;

	char string[30];
	HashTable* ht;
	ht = initTable(6000, 3);
	if (!parseWordsToTable("dictionary.txt", ht))
	{
		printf("cant insert into table\n");
	}
	for ( i; text[i] != '\0'; i++)
	{
		for (i,j = 0; text[i] != ' ' && text[i] != '\0'; i++, j++)
		{
			string[j] = text[i];
		}
		string[j] = '\0';
		if (!isWordInDictionary(ht, string)) {
			temp = insertSpellList(temp, ht, string);
		}
	}
	return temp;
}


void printSpellingSuggestions(SpellingSuggestion* spell_list)
{
	SpellingSuggestion* temp = spell_list;
	if (spell_list == NULL)
	{
		printf("no spelling suggestions \n");
		return;
	}
	for (; temp != NULL; temp = temp->next)
	{
		printf("The word [%s] was misspelled.", temp->originalWord);
		if (temp->suggestions)
		{
			printf(" Did you mean :\n", temp->originalWord);
			PrintList(temp->suggestions);
		}
		else
		{
			printf(" No suggestions found for this word\n");
		}
	}

}