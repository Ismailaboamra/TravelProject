#define _CRT_SECURE_NO_WARNINGS
#include <conio.h>
#include <math.h>
#include<malloc.h>
#include <string.h>
#include"LinkedList.h"



void PrintList(LinkedList*node) {
	if (node != NULL) {
		while (node != NULL) {
			printf("%s \n", node->data);
			node = node->next;
		}
	}
	else {
		printf("The list is empty!!!\n");
	}
}


LinkedList* BuildNode(char* string) {

	LinkedList* temp = (LinkedList*)malloc(sizeof(LinkedList));
	temp->data= string;
	temp->next = NULL;


	return temp;
}

LinkedList* addToStart(LinkedList* list, char* string) {
	LinkedList* temp = BuildNode(string);
	temp->next = list;
	return temp;
}

LinkedList* addToEND(LinkedList* list, char* string) {
	LinkedList* node = BuildNode(string);
	LinkedList* temp = list;
	while (temp->next != NULL)
	{
		temp = temp->next;
	}
	temp->next = node;
	return list;
}


LinkedList* FreeList(LinkedList* list) {
	LinkedList* temp;
	while (list != NULL)
	{
		temp = list;
		list = list->next;
		free(temp);
	}
	return NULL;
}

LinkedList* DeleteElement(LinkedList* node, char* string) {
	LinkedList* new_node = node, * this_node = node->next;
	if (node == NULL)
		return node;
	if (node->data == string)
	{
		LinkedList* temp = node;
		node = node->next;
		free(temp);
		return node;
	}
	while (new_node != NULL)
	{
		if (new_node->data == string)
			break;
		this_node = new_node;
		new_node = new_node->next;
	}
	if (new_node != NULL)
		this_node->next = new_node->next;
	free(new_node);
	return node;
}

int isInList(LinkedList*node, char*string) {
	int count = 0;
	if (node != NULL) {
		while (node != NULL) {
			if (strcmp(node->data, string) == 0)
				count++;

			node = node->next;
		}
	}

	if (count != 0)
		return 1;
	return 0;
}
LinkedList* addListToEND(LinkedList* node, LinkedList* end_node) {
	LinkedList* temp = node;
	while (temp->next != NULL)
		temp = temp->next;
	temp->next = end_node;
	return node;
}