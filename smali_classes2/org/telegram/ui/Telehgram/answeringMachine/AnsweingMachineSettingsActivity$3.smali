.class Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;
.super Ljava/lang/Object;
.source "AnsweingMachineSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    .prologue
    .line 132
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 18
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->answermachineTime:I
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->access$300(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I

    move-result v8

    if-ne p3, v8, :cond_95

    .line 136
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "mainconfig"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 137
    .local v6, "preferences":Landroid/content/SharedPreferences;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;->val$context:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Answeringmachinetime"

    const v10, 0x7f070649

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 139
    new-instance v5, Landroid/widget/NumberPicker;

    iget-object v8, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 140
    .local v5, "picker":Landroid/widget/NumberPicker;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 141
    const/16 v8, 0x96

    invoke-virtual {v5, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 142
    new-instance v4, Landroid/widget/FrameLayout;

    iget-object v8, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 143
    .local v4, "parent":Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x11

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    const-string v8, "answeringmachinetime"

    const/4 v9, 0x5

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 148
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 149
    const-string v8, "Ok"

    const v9, 0x7f0703d4

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3$1;

    invoke-direct {v9, p0, v6, v5}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3$1;-><init>(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;Landroid/content/SharedPreferences;Landroid/widget/NumberPicker;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    const-string v8, "Cancel"

    const v9, 0x7f0700fe

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3$2;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3$2;-><init>(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 210
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "parent":Landroid/widget/FrameLayout;
    .end local v5    # "picker":Landroid/widget/NumberPicker;
    .end local v6    # "preferences":Landroid/content/SharedPreferences;
    .end local p2    # "view":Landroid/view/View;
    :cond_94
    :goto_94
    return-void

    .line 164
    .restart local p2    # "view":Landroid/view/View;
    :cond_95
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->answermachinetext:I
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->access$400(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I

    move-result v8

    if-ne p3, v8, :cond_126

    .line 165
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "mainconfig"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 166
    .restart local v6    # "preferences":Landroid/content/SharedPreferences;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;->val$context:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 167
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Answeringmachinetext"

    const v10, 0x7f070648

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 168
    new-instance v2, Landroid/widget/EditText;

    iget-object v8, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;->val$context:Landroid/content/Context;

    invoke-direct {v2, v8}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 169
    .local v2, "input":Landroid/widget/EditText;
    const-string v8, "answeringmachineanswer"

    const-string v9, "Answeringmachinetext"

    const v10, 0x7f070647

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 171
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v8, 0x0

    const/16 v9, 0x14

    const/4 v10, 0x0

    const/16 v11, 0x14

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 172
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 174
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 175
    const-string v8, "Ok"

    const v9, 0x7f0703d4

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3$3;

    invoke-direct {v9, p0, v6, v2}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3$3;-><init>(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;Landroid/content/SharedPreferences;Landroid/widget/EditText;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    const-string v8, "Cancel"

    const v9, 0x7f0700fe

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3$4;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3$4;-><init>(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_94

    .line 189
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "input":Landroid/widget/EditText;
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "preferences":Landroid/content/SharedPreferences;
    :cond_126
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity$3;->this$0:Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->enableAnweringMachin:I
    invoke-static {v8}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;->access$500(Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;)I

    move-result v8

    if-ne p3, v8, :cond_94

    .line 190
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "mainconfig"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 191
    .restart local v6    # "preferences":Landroid/content/SharedPreferences;
    const-string v8, "answeringmachine"

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 192
    .local v7, "showExactCount":Z
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 193
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v7, :cond_15b

    .line 194
    const-string v8, "answeringmachine"

    const/4 v9, 0x1

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    :goto_14d
    instance-of v8, p2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v8, :cond_94

    .line 202
    if-nez v7, :cond_165

    .line 203
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    const/4 v8, 0x1

    invoke-virtual {p2, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_94

    .line 197
    .restart local p2    # "view":Landroid/view/View;
    :cond_15b
    const-string v8, "answeringmachine"

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_14d

    .line 206
    :cond_165
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_94
.end method
