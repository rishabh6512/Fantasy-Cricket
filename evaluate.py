from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_Dialog(object):
    def setupUi(self, Dialog):
        Dialog.setObjectName("Dialog")
        Dialog.resize(773, 668)
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap("icons/1.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        Dialog.setWindowIcon(icon)
        Dialog.setStyleSheet("background-color: rgb(255, 170, 127);")
        self.verticalLayout = QtWidgets.QVBoxLayout(Dialog)
        self.verticalLayout.setObjectName("verticalLayout")
        self.l1 = QtWidgets.QLabel(Dialog)
        font = QtGui.QFont()
        font.setFamily("Arial")
        font.setPointSize(18)
        font.setBold(True)
        font.setUnderline(True)
        font.setWeight(75)
        self.l1.setFont(font)
        self.l1.setAlignment(QtCore.Qt.AlignCenter)
        self.l1.setObjectName("l1")
        self.verticalLayout.addWidget(self.l1)
        spacerItem = QtWidgets.QSpacerItem(20, 20, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Minimum)
        self.verticalLayout.addItem(spacerItem)
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.l2 = QtWidgets.QLabel(Dialog)
        font = QtGui.QFont()
        font.setPointSize(12)
        font.setBold(True)
        font.setUnderline(True)
        font.setWeight(75)
        self.l2.setFont(font)
        self.l2.setAlignment(QtCore.Qt.AlignCenter)
        self.l2.setObjectName("l2")
        self.horizontalLayout.addWidget(self.l2)
        self.label_2 = QtWidgets.QLabel(Dialog)
        font = QtGui.QFont()
        font.setFamily("Arial")
        font.setPointSize(12)
        font.setBold(True)
        font.setUnderline(True)
        font.setWeight(75)
        self.label_2.setFont(font)
        self.label_2.setAlignment(QtCore.Qt.AlignCenter)
        self.label_2.setObjectName("label_2")
        self.horizontalLayout.addWidget(self.label_2)
        self.verticalLayout.addLayout(self.horizontalLayout)
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        self.cb1 = QtWidgets.QComboBox(Dialog)
        font = QtGui.QFont()
        font.setPointSize(18)
        self.cb1.setFont(font)
        self.cb1.setCurrentText("")
        self.cb1.setObjectName("cb1")
        # Add the team's name in the combobox 
        import sqlite3
        con=sqlite3.connect('cricket.db')
        sql="select name from teams"
        cur=con.execute(sql)
        for row in cur:
            self.cb1.addItem(str(row[0]))
        con.close()
        self.horizontalLayout_2.addWidget(self.cb1)
        self.cb2 = QtWidgets.QComboBox(Dialog)
        font = QtGui.QFont()
        font.setPointSize(18)
        self.cb2.setFont(font)
        self.cb2.setObjectName("cb2")
        # add the match table to the second combobox
        self.cb2.addItem("match")
        self.horizontalLayout_2.addWidget(self.cb2)
        self.verticalLayout.addLayout(self.horizontalLayout_2)
        spacerItem1 = QtWidgets.QSpacerItem(10, 10, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Minimum)
        self.verticalLayout.addItem(spacerItem1)
        self.line = QtWidgets.QFrame(Dialog)
        font = QtGui.QFont()
        font.setPointSize(12)
        self.line.setFont(font)
        self.line.setLineWidth(5)
        self.line.setFrameShape(QtWidgets.QFrame.HLine)
        self.line.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line.setObjectName("line")
        self.verticalLayout.addWidget(self.line)
        spacerItem2 = QtWidgets.QSpacerItem(10, 10, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Minimum)
        self.verticalLayout.addItem(spacerItem2)
        self.horizontalLayout_5 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_5.setObjectName("horizontalLayout_5")
        self.l4_2 = QtWidgets.QLabel(Dialog)
        font = QtGui.QFont()
        font.setFamily("Arial")
        font.setPointSize(12)
        font.setBold(True)
        font.setUnderline(False)
        font.setWeight(75)
        self.l4_2.setFont(font)
        self.l4_2.setObjectName("l4_2")
        self.horizontalLayout_5.addWidget(self.l4_2)
        self.label = QtWidgets.QLabel(Dialog)
        font = QtGui.QFont()
        font.setFamily("Arial")
        font.setPointSize(12)
        font.setBold(True)
        font.setWeight(75)
        self.label.setFont(font)
        self.label.setObjectName("label")
        self.horizontalLayout_5.addWidget(self.label)
        self.verticalLayout.addLayout(self.horizontalLayout_5)
        self.horizontalLayout_3 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_3.setObjectName("horizontalLayout_3")
        self.list1 = QtWidgets.QListWidget(Dialog)
        font = QtGui.QFont()
        font.setPointSize(12)
        self.list1.setFont(font)
        self.list1.setObjectName("list1")
        self.horizontalLayout_3.addWidget(self.list1)
        self.list2 = QtWidgets.QListWidget(Dialog)
        font = QtGui.QFont()
        font.setPointSize(12)
        self.list2.setFont(font)
        self.list2.setObjectName("list2")
        self.horizontalLayout_3.addWidget(self.list2)
        self.verticalLayout.addLayout(self.horizontalLayout_3)
        self.horizontalLayout_4 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_4.setObjectName("horizontalLayout_4")
        self.b1 = QtWidgets.QPushButton(Dialog)
        font = QtGui.QFont()
        font.setPointSize(16)
        font.setBold(True)
        font.setWeight(75)
        self.b1.setFont(font)
        self.b1.setStyleSheet("background-color: rgb(0, 0, 127);\n"
"color: rgb(255, 170, 0);")
        self.b1.setObjectName("b1")
        self.b1.clicked.connect(self.calculate) # calling calculate module to calculate score
        self.horizontalLayout_4.addWidget(self.b1)
        self.l4 = QtWidgets.QLabel(Dialog)
        font = QtGui.QFont()
        font.setFamily("8514oem")
        font.setPointSize(18)
        font.setBold(True)
        font.setWeight(75)
        self.l4.setFont(font)
        self.l4.setText("")
        self.l4.setAlignment(QtCore.Qt.AlignCenter)
        self.l4.setObjectName("l4")
        self.horizontalLayout_4.addWidget(self.l4)
        self.verticalLayout.addLayout(self.horizontalLayout_4)

        self.retranslateUi(Dialog)
        QtCore.QMetaObject.connectSlotsByName(Dialog)

    def retranslateUi(self, Dialog):
        _translate = QtCore.QCoreApplication.translate
        Dialog.setWindowTitle(_translate("Dialog", "Evaluation"))
        self.l1.setText(_translate("Dialog", "Evaluate the Performance of your Fantasy Team"))
        self.l2.setText(_translate("Dialog", "Select Your Team"))
        self.label_2.setText(_translate("Dialog", "Select Match"))
        self.l4_2.setText(_translate("Dialog", "Players"))
        self.label.setText(_translate("Dialog", "Points"))
        self.b1.setText(_translate("Dialog", "Calculate Score"))
    # This module calculate the score of players based on their performance in the match
    def calculate(self):
        team=self.cb1.currentText()
        self.list2.clear()
        self.list1.clear()
        import sqlite3
        con=sqlite3.connect('cricket.db')
        sql="select players,value from teams where name='"+team+"'"
        cur=con.execute(sql)
        r=cur.fetchone()
        selected=r[0].split(',')
        self.list1.addItems(selected)
        teamttl=0
        self.list2.clear()
        match=self.cb2.currentText()
        for i in range(self.list1.count()):
            total=0
            nm=self.list1.item(i).text()
            cursor=con.execute("select * from '"+match+"' where player='"+nm+"'")
            row=cursor.fetchone()
            field=(row[9]+row[10]+row[11])*10
            bat=self.batting(row[1],row[3],row[4],row[2]) # calling batting module
            bowl=self.bowling(row[8],row[5],row[7]) # calling bowling module
            total=field+bat+bowl
            self.list2.addItem(str(total))
            teamttl=teamttl+total
        self.l4.setText(str(teamttl))
    # this module calculate the batting score according to their performance    
    def batting(self,runs,fours,sixes,balls):
        points=0
        if balls>0:
            points=int(runs/2)+points
            if runs>=100:
                points+=10
            if runs>=50:
                points+=5
            if (runs/balls*100)>=80 and (runs/balls*100)<=100:
                points+=2
            elif (runs/balls*100)>100:
                points+=4
            points+=fours*1
            points+=sixes*2
        return points
    
    # this module calculate the bowling score according to their performance
    def bowling(self,wickets,bowled,runs):
        points=0
        if bowled>0:
            points+=wickets*10
            if wickets>=5:
                points+=10
            elif wickets==3:
                points+=5
            eco=6*runs/bowled
            if eco>3.5 and eco<=4.5:
                points+=4
            elif eco>=2 and eco<=3.5:
                points+=7
            elif eco<2:
                points+=10
        return points

 
if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    Dialog = QtWidgets.QDialog()
    ui = Ui_Dialog()
    ui.setupUi(Dialog)
    Dialog.show()
    sys.exit(app.exec_())
