#include <iostream>

using namespace std; // For cout

typedef struct item { // struct to create a new linkedlist
    int val;
    item* next;
};

int getLinkedListSize(struct item* head);
//int getDifference(struct item* headone, struct item* headtwo);
int getDifferenceHelper(int d, struct item* headone, struct item* headtwo);
item* temp = new item;

int getLinkedListSize(struct item* head){
    int ll = 1;
    temp = head;
    while(temp!=NULL) {
        //cout<< temp->val << " ";
        //cout<<"\n";
        temp = temp->next ;
        ++ll;
    }
    //cout<<"\nSize of the linked list is: "<<ll<<"\n";
    return ll;
}

int getDifference(struct item* head1, struct item* head2){
    int size1 = getLinkedListSize(head1);
    int size2 = getLinkedListSize(head2);
    //cout<<"\n"<<"Size 1: "<<size1<<"\nSize 2: "<<size2<<"\n";
    int diff = 0;
    if (size1 > size2){
        diff = size1 - size2;
        //cout<<"getdifference"<<getDifferenceHelper(diff, head1, head2);
        int ths = getDifferenceHelper(diff, head1, head2);
        //cout<<"ths::::::"<<ths;
        return ths;
    }
    else{
        diff = size2 - size1;
        //cout<<"getdifference : "<<getDifferenceHelper(diff, head1, head2)<<"::::";
        int hst = getDifferenceHelper(diff, head2, head1);
        //cout<<"hst:::::"<<hst;
        return hst;
    }
}

int getDifferenceHelper(int d, struct item* node1, struct item* node2){
    item* current1 = node1;
    item* current2 = node2;
    for (int i = 0; i<d; i++) {
        if (current1 == NULL){
            return -1;
        }
        current1 = current1->next;
    }
    //cout<<"Current 1::"<<current1->val;
    //cout<<"Current 2::"<<current2->val<<":";
    while(current1 != NULL && current2 != NULL){
        if (current1 ==  current2){
            //cout<<"this";
            return current1->val;
        }
        current1 = current1->next;
        current2 = current2->next;
    }
    //cout<<"\n The first common element is:"<<current1->val;
    return -1;
}

int main() {
    item* nodeInsert = new item;
    item* head1 = new item;
    head1->val = 10;

    item* head2 = new item;
    head2->val = 12;

    nodeInsert = new item;
    nodeInsert->val = 6;
    head1->next = nodeInsert;

    nodeInsert = new item;
    nodeInsert->val = 14;
    head2->next = nodeInsert;

    nodeInsert = new item;
    nodeInsert->val = 5;
    head2->next->next = nodeInsert;

    nodeInsert = new item;
    nodeInsert->val = 2;
    head2->next->next->next = nodeInsert;

    nodeInsert = new item;
    nodeInsert->val = 42;
    head2->next->next->next->next = nodeInsert;
    head1->next->next = nodeInsert;

    nodeInsert = new item;
    nodeInsert->val = 9;
    head2->next->next->next->next->next = nodeInsert;
    head1->next->next->next = nodeInsert;

    nodeInsert = new item;
    nodeInsert->val = 22;
    head2->next->next->next->next->next->next = nodeInsert;
    head1->next->next->next->next = nodeInsert;

    head1->next->next->next->next->next = NULL;
    head2->next->next->next->next->next->next->next = NULL;

    cout<<"\nThe first common element is: "<< getDifference(head1, head2)<<"\n"<<"::::|||";

}