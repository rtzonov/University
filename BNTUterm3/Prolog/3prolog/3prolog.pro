predicates
nondeterm roditel(string,string)
nondeterm man(string)
nondeterm woman(string)
nondeterm sister(string,string)
nondeterm brother(string,string)
nondeterm dad(string,string)
nondeterm mam(string,string)
nondeterm grandad(string,string)
nondeterm grandmam(string,string)
nondeterm grandd(string,string)
nondeterm grandson(string,string)
nondeterm ancle(string,string)
nondeterm aunt(string,string)
clauses
roditel("����","����").
roditel("����","����").
roditel("����","����").
roditel("����","����").
roditel("����","����").
roditel("����","������").
roditel("����","����").
roditel("����","������").
roditel("������","�������").
roditel("������","�������").
man("����").
man("����").
man("������").
woman("����").
woman("����").
woman("����").
woman("������").
woman("����").
woman("�������").
sister(X,Y):- roditel(Z,Y),roditel(Z,X),woman(Y) and Y<>X.
brother(_X,Y):- roditel(Z,Y),roditel(Z,_X),man(Y) and Y<>_X.
mam(X,Y):- roditel(X,Y),woman(X)./*��������,������*/
dad(X,Y):- roditel(X,Y),man(X).
grandd(X,Y):- roditel(Z,X),roditel(Y,Z),woman(X)./*����,�������*/
grandson(X,Y):- roditel(Z,X),roditel(Y,Z),man(X).
grandmam(X,Y):- roditel(X,Z),roditel(Z,Y),woman(X)./*�������,����*/
grandad(X,Y):- roditel(X,Z),roditel(Z,Y),man(X).
ancle(X,Y):- roditel(Z,Y) and brother(Z,X).
aunt(X,Y):- roditel(Z,Y) and sister(Z,X).
goal
%write("��� ��� ����?"),nl,
%dad(X,Y).
%write("��� ��� ����?"),nl,
%mam(X,Y).
%write("��� ��� ��������� ������?"),nl,
brother(X,Y).
%write("��� �������� �������?"),nl,
%sister(X,Y).
%write("��� ��� ����?"),nl,
%grandson(X,Y).
%write("��� ��� ������?"),nl,
%grandd(X,Y).
%write("��� ��� �������?"),nl,
%grandmam(X,Y).
%write("��� ��� �������?"),nl,
%grandad(X,Y).
%write("��� ��� ����?"),nl,
%ancle(X,Y).
%write("��� ��� ���?"),nl,
%aunt(X,Y).