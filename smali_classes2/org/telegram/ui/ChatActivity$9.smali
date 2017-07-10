.class Lorg/telegram/ui/ChatActivity$9;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 1017
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$9;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 39
    .param p1, "id"    # I

    .prologue
    .line 1020
    const/4 v4, -0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_9a

    .line 1021
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v4

    if-eqz v4, :cond_92

    .line 1022
    const/16 v20, 0x1

    .local v20, "a":I
    :goto_15
    if-ltz v20, :cond_34

    .line 1023
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v20

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1024
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1900(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v20

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1022
    add-int/lit8 v20, v20, -0x1

    goto :goto_15

    .line 1026
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->cantDeleteMessagesCount:I
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$2002(Lorg/telegram/ui/ChatActivity;I)I

    .line 1027
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isEditingMessage()Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 1028
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setEditingMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    .line 1033
    :goto_53
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->showSendButton()V

    .line 1037
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateBottomOverlay()V
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$2400(Lorg/telegram/ui/ChatActivity;)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->isForwardWithEdit:Z
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$2502(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 1411
    .end local v20    # "a":I
    :cond_7d
    :goto_7d
    return-void

    .line 1030
    .restart local v20    # "a":I
    :cond_7e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$2100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 1031
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x1

    # invokes: Lorg/telegram/ui/ChatActivity;->updatePinnedMessageView(Z)V
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;Z)V

    goto :goto_53

    .line 1040
    .end local v20    # "a":I
    :cond_92
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->finishFragment()V

    goto :goto_7d

    .line 1042
    :cond_9a
    const/16 v4, 0xa

    move/from16 v0, p1

    if-ne v0, v4, :cond_19e

    .line 1043
    const-string v33, ""

    .line 1044
    .local v33, "str":Ljava/lang/String;
    const/16 v32, 0x0

    .line 1045
    .local v32, "previousUid":I
    const/16 v20, 0x1

    .restart local v20    # "a":I
    :goto_a6
    if-ltz v20, :cond_150

    .line 1046
    new-instance v27, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1900(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v20

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1047
    .local v27, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v4, :cond_141

    .line 1048
    invoke-static/range {v27 .. v27}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1052
    :goto_c8
    const/16 v22, 0x0

    .local v22, "b":I
    :goto_ca
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_14c

    .line 1053
    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    .line 1054
    .local v29, "messageId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1900(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v20

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 1055
    .local v9, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_109

    .line 1056
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1058
    :cond_109
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 1060
    .local v31, "preferences":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const-string v7, "copySender"

    const/4 v8, 0x1

    move-object/from16 v0, v31

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    move/from16 v0, v32

    # invokes: Lorg/telegram/ui/ChatActivity;->getMessageContent(Lorg/telegram/messenger/MessageObject;IZ)Ljava/lang/String;
    invoke-static {v5, v9, v0, v7}, Lorg/telegram/ui/ChatActivity;->access$2600(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;IZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 1061
    iget-object v4, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    move/from16 v32, v0

    .line 1052
    add-int/lit8 v22, v22, 0x1

    goto :goto_ca

    .line 1050
    .end local v9    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v22    # "b":I
    .end local v29    # "messageId":Ljava/lang/Integer;
    .end local v31    # "preferences":Landroid/content/SharedPreferences;
    :cond_141
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_c8

    .line 1045
    .restart local v22    # "b":I
    :cond_14c
    add-int/lit8 v20, v20, -0x1

    goto/16 :goto_a6

    .line 1064
    .end local v22    # "b":I
    .end local v27    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_150
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_159

    .line 1065
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)V

    .line 1067
    :cond_159
    const/16 v20, 0x1

    :goto_15b
    if-ltz v20, :cond_17a

    .line 1068
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v20

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1069
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1900(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v20

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1067
    add-int/lit8 v20, v20, -0x1

    goto :goto_15b

    .line 1071
    :cond_17a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->cantDeleteMessagesCount:I
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$2002(Lorg/telegram/ui/ChatActivity;I)I

    .line 1072
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$2700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 1073
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x1

    # invokes: Lorg/telegram/ui/ChatActivity;->updatePinnedMessageView(Z)V
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;Z)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_7d

    .line 1079
    .end local v20    # "a":I
    .end local v32    # "previousUid":I
    .end local v33    # "str":Ljava/lang/String;
    :cond_19e
    const/16 v4, 0xc

    move/from16 v0, p1

    if-ne v0, v4, :cond_1b8

    .line 1080
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_7d

    .line 1083
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    # invokes: Lorg/telegram/ui/ChatActivity;->createDeleteMessagesAlert(Lorg/telegram/messenger/MessageObject;)V
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$2800(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_7d

    .line 1085
    :cond_1b8
    const/16 v4, 0x6f

    move/from16 v0, p1

    if-ne v0, v4, :cond_2fd

    .line 1086
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 1087
    .restart local v31    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    .line 1088
    .local v25, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "forward_type"

    const/4 v5, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1089
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1091
    const-string v4, "multi_forward"

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 1092
    .local v30, "multiF":Z
    if-nez v30, :cond_213

    .line 1093
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1094
    .local v21, "args":Landroid/os/Bundle;
    const-string v4, "onlySelect"

    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1095
    const-string v4, "dialogsType"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1096
    new-instance v26, Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1097
    .local v26, "fragment":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_7d

    .line 1100
    .end local v21    # "args":Landroid/os/Bundle;
    .end local v26    # "fragment":Lorg/telegram/ui/DialogsActivity;
    :cond_213
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_7d

    .line 1103
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v4, :cond_22e

    .line 1104
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 1106
    :cond_22e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1107
    .local v6, "msgObj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/16 v20, 0x1

    .restart local v20    # "a":I
    :goto_235
    if-ltz v20, :cond_290

    .line 1108
    new-instance v27, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v20

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1109
    .restart local v27    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v4, :cond_283

    .line 1110
    invoke-static/range {v27 .. v27}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1114
    :goto_257
    const/16 v22, 0x0

    .restart local v22    # "b":I
    :goto_259
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_28d

    .line 1115
    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    .line 1116
    .restart local v29    # "messageId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v20

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 1117
    .restart local v9    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    add-int/lit8 v22, v22, 0x1

    goto :goto_259

    .line 1112
    .end local v9    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v22    # "b":I
    .end local v29    # "messageId":Ljava/lang/Integer;
    :cond_283
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_257

    .line 1107
    .restart local v22    # "b":I
    :cond_28d
    add-int/lit8 v20, v20, -0x1

    goto :goto_235

    .line 1120
    .end local v22    # "b":I
    .end local v27    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_290
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v4, Lorg/telegram/ui/Telehgram/ShareAlert2;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->val$context:Landroid/content/Context;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-eqz v8, :cond_2e7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v8, :cond_2e7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v8, :cond_2e7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2e7

    const/4 v8, 0x1

    :goto_2ca
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/Telehgram/ShareAlert2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v12, v4}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1122
    const/16 v20, 0x1

    :goto_2d5
    if-ltz v20, :cond_2e9

    .line 1123
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v20

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1122
    add-int/lit8 v20, v20, -0x1

    goto :goto_2d5

    .line 1120
    :cond_2e7
    const/4 v8, 0x0

    goto :goto_2ca

    .line 1125
    :cond_2e9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$2900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 1126
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_7d

    .line 1128
    .end local v6    # "msgObj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v20    # "a":I
    .end local v25    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v30    # "multiF":Z
    .end local v31    # "preferences":Landroid/content/SharedPreferences;
    :cond_2fd
    const/16 v4, 0xb

    move/from16 v0, p1

    if-ne v0, v4, :cond_442

    .line 1129
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 1130
    .restart local v31    # "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    .line 1131
    .restart local v25    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "forward_type"

    const/4 v5, 0x2

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1132
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1134
    const-string v4, "multi_forward"

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 1135
    .restart local v30    # "multiF":Z
    if-nez v30, :cond_358

    .line 1136
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1137
    .restart local v21    # "args":Landroid/os/Bundle;
    const-string v4, "onlySelect"

    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1138
    const-string v4, "dialogsType"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1139
    new-instance v26, Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1140
    .restart local v26    # "fragment":Lorg/telegram/ui/DialogsActivity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_7d

    .line 1143
    .end local v21    # "args":Landroid/os/Bundle;
    .end local v26    # "fragment":Lorg/telegram/ui/DialogsActivity;
    :cond_358
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_7d

    .line 1146
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v4, :cond_373

    .line 1147
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 1149
    :cond_373
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    .restart local v6    # "msgObj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/16 v20, 0x1

    .restart local v20    # "a":I
    :goto_37a
    if-ltz v20, :cond_3d5

    .line 1151
    new-instance v27, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v20

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1152
    .restart local v27    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v4, :cond_3c8

    .line 1153
    invoke-static/range {v27 .. v27}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1157
    :goto_39c
    const/16 v22, 0x0

    .restart local v22    # "b":I
    :goto_39e
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_3d2

    .line 1158
    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    .line 1159
    .restart local v29    # "messageId":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v20

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 1160
    .restart local v9    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    add-int/lit8 v22, v22, 0x1

    goto :goto_39e

    .line 1155
    .end local v9    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v22    # "b":I
    .end local v29    # "messageId":Ljava/lang/Integer;
    :cond_3c8
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_39c

    .line 1150
    .restart local v22    # "b":I
    :cond_3d2
    add-int/lit8 v20, v20, -0x1

    goto :goto_37a

    .line 1163
    .end local v22    # "b":I
    .end local v27    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3d5
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v4, Lorg/telegram/ui/Telehgram/ShareAlert2;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->val$context:Landroid/content/Context;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-eqz v8, :cond_42c

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v8, :cond_42c

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v8, :cond_42c

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_42c

    const/4 v8, 0x1

    :goto_40f
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/Telehgram/ShareAlert2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v12, v4}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1165
    const/16 v20, 0x1

    :goto_41a
    if-ltz v20, :cond_42e

    .line 1166
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v20

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1165
    add-int/lit8 v20, v20, -0x1

    goto :goto_41a

    .line 1163
    :cond_42c
    const/4 v8, 0x0

    goto :goto_40f

    .line 1168
    :cond_42e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$3000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 1169
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_7d

    .line 1171
    .end local v6    # "msgObj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v20    # "a":I
    .end local v25    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v30    # "multiF":Z
    .end local v31    # "preferences":Landroid/content/SharedPreferences;
    :cond_442
    const/16 v4, 0x71

    move/from16 v0, p1

    if-ne v0, v4, :cond_4f4

    .line 1172
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_7d

    .line 1175
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v4, :cond_463

    .line 1176
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 1178
    :cond_463
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1179
    .restart local v6    # "msgObj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->forwaringMessage:Lorg/telegram/messenger/MessageObject;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1180
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v4, Lorg/telegram/ui/Telehgram/ShareAlert2;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->val$context:Landroid/content/Context;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-eqz v8, :cond_4cf

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v8, :cond_4cf

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    if-eqz v8, :cond_4cf

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4cf

    const/4 v8, 0x1

    :goto_4ad
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v11, v11, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/Telehgram/ShareAlert2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;ZLorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v12, v4}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1182
    const/16 v20, 0x1

    .restart local v20    # "a":I
    :goto_4bd
    if-ltz v20, :cond_4d1

    .line 1183
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v20

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1182
    add-int/lit8 v20, v20, -0x1

    goto :goto_4bd

    .line 1180
    .end local v20    # "a":I
    :cond_4cf
    const/4 v8, 0x0

    goto :goto_4ad

    .line 1185
    .restart local v20    # "a":I
    :cond_4d1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$3200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 1186
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateBottomOverlay()V
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$2400(Lorg/telegram/ui/ChatActivity;)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->isForwardWithEdit:Z
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$2502(Lorg/telegram/ui/ChatActivity;Z)Z

    goto/16 :goto_7d

    .line 1189
    .end local v6    # "msgObj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v20    # "a":I
    :cond_4f4
    const/16 v4, 0xd

    move/from16 v0, p1

    if-ne v0, v4, :cond_523

    .line 1190
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_7d

    .line 1193
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-static {v5, v7}, Lorg/telegram/ui/Components/AlertsCreator;->createTTLAlert(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_7d

    .line 1194
    :cond_523
    const/16 v4, 0xf

    move/from16 v0, p1

    if-eq v0, v4, :cond_52f

    const/16 v4, 0x10

    move/from16 v0, p1

    if-ne v0, v4, :cond_5de

    .line 1195
    :cond_52f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_7d

    .line 1198
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    long-to-int v4, v4

    if-gez v4, :cond_5bb

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    const/16 v7, 0x20

    shr-long/2addr v4, v7

    long-to-int v4, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5bb

    const/16 v28, 0x1

    .line 1199
    .local v28, "isChat":Z
    :goto_555
    new-instance v24, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1200
    .local v24, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v4, "AppName"

    const v5, 0x7f070092

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1201
    const/16 v4, 0xf

    move/from16 v0, p1

    if-ne v0, v4, :cond_5be

    .line 1202
    const-string v4, "AreYouSureClearHistory"

    const v5, 0x7f0700a4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1210
    :goto_586
    const-string v4, "OK"

    const v5, 0x7f0703d4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ChatActivity$9$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v28

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/ui/ChatActivity$9$1;-><init>(Lorg/telegram/ui/ChatActivity$9;IZ)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1229
    const-string v4, "Cancel"

    const v5, 0x7f0700fe

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1230
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_7d

    .line 1198
    .end local v24    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v28    # "isChat":Z
    :cond_5bb
    const/16 v28, 0x0

    goto :goto_555

    .line 1204
    .restart local v24    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .restart local v28    # "isChat":Z
    :cond_5be
    if-eqz v28, :cond_5cf

    .line 1205
    const-string v4, "AreYouSureDeleteAndExit"

    const v5, 0x7f0700a7

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_586

    .line 1207
    :cond_5cf
    const-string v4, "AreYouSureDeleteThisChat"

    const v5, 0x7f0700ab

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_586

    .line 1232
    .end local v24    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v28    # "isChat":Z
    :cond_5de
    const/16 v4, 0x70

    move/from16 v0, p1

    if-ne v0, v4, :cond_66d

    .line 1233
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_7d

    .line 1236
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    long-to-int v4, v4

    if-gez v4, :cond_66a

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    const/16 v7, 0x20

    shr-long/2addr v4, v7

    long-to-int v4, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_66a

    const/16 v28, 0x1

    .line 1237
    .restart local v28    # "isChat":Z
    :goto_60a
    new-instance v24, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1238
    .restart local v24    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v4, "AppName"

    const v5, 0x7f070092

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1239
    if-eqz v28, :cond_637

    .line 1240
    const-string v4, "AreYouSureDeleteWithReturn"

    const v5, 0x7f070653

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1242
    :cond_637
    const-string v4, "OK"

    const v5, 0x7f0703d4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ChatActivity$9$2;

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/ChatActivity$9$2;-><init>(Lorg/telegram/ui/ChatActivity$9;Z)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1257
    const-string v4, "Cancel"

    const v5, 0x7f0700fe

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1258
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_7d

    .line 1236
    .end local v24    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v28    # "isChat":Z
    :cond_66a
    const/16 v28, 0x0

    goto :goto_60a

    .line 1259
    :cond_66d
    const/16 v4, 0x72

    move/from16 v0, p1

    if-ne v0, v4, :cond_6c0

    .line 1260
    new-instance v24, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1261
    .restart local v24    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v4, "FastDeleteDescription"

    const v5, 0x7f0706e5

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1262
    const-string v4, "AppName"

    const v5, 0x7f070092

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1263
    const-string v4, "OK"

    const v5, 0x7f0703d4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ChatActivity$9$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/ChatActivity$9$3;-><init>(Lorg/telegram/ui/ChatActivity$9;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1271
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_7d

    .line 1272
    .end local v24    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_6c0
    const/16 v4, 0x73

    move/from16 v0, p1

    if-ne v0, v4, :cond_729

    .line 1273
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "FastDeleteModeWasDisabled"

    const v7, 0x7f0706e6

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v34

    .line 1274
    .local v34, "toast":Landroid/widget/Toast;
    invoke-virtual/range {v34 .. v34}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/LinearLayout;

    .line 1275
    .local v35, "toastLayout":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 1276
    .local v36, "toastTV":Landroid/widget/TextView;
    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1277
    invoke-virtual/range {v34 .. v34}, Landroid/widget/Toast;->show()V

    .line 1279
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->fastDelete:Z
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-nez v4, :cond_727

    const/4 v4, 0x1

    :goto_708
    # setter for: Lorg/telegram/ui/ChatActivity;->fastDelete:Z
    invoke-static {v5, v4}, Lorg/telegram/ui/ChatActivity;->access$1102(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 1280
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$3300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    const/16 v5, 0x73

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 1281
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->headerItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$3300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto/16 :goto_7d

    .line 1279
    :cond_727
    const/4 v4, 0x0

    goto :goto_708

    .line 1282
    .end local v34    # "toast":Landroid/widget/Toast;
    .end local v35    # "toastLayout":Landroid/widget/LinearLayout;
    .end local v36    # "toastTV":Landroid/widget/TextView;
    :cond_729
    const/16 v4, 0x74

    move/from16 v0, p1

    if-ne v0, v4, :cond_7d9

    .line 1283
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->batchDelete:Z
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-nez v4, :cond_786

    .line 1284
    new-instance v24, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1285
    .restart local v24    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v4, "BatchDeleteDescription"

    const v5, 0x7f070664

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1286
    const-string v4, "AppName"

    const v5, 0x7f070092

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1287
    const-string v4, "OK"

    const v5, 0x7f0703d4

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ChatActivity$9$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/ChatActivity$9$4;-><init>(Lorg/telegram/ui/ChatActivity$9;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1293
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_7d

    .line 1295
    .end local v24    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_786
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->batchDelete:Z
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-nez v4, :cond_7d7

    const/4 v4, 0x1

    :goto_795
    # setter for: Lorg/telegram/ui/ChatActivity;->batchDelete:Z
    invoke-static {v5, v4}, Lorg/telegram/ui/ChatActivity;->access$1202(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 1297
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->batchDelete:Z
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    if-nez v4, :cond_7d

    .line 1298
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "Disabled"

    const v7, 0x7f0701e5

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v34

    .line 1299
    .restart local v34    # "toast":Landroid/widget/Toast;
    invoke-virtual/range {v34 .. v34}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/LinearLayout;

    .line 1300
    .restart local v35    # "toastLayout":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 1301
    .restart local v36    # "toastTV":Landroid/widget/TextView;
    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1302
    invoke-virtual/range {v34 .. v34}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7d

    .line 1295
    .end local v34    # "toast":Landroid/widget/Toast;
    .end local v35    # "toastLayout":Landroid/widget/LinearLayout;
    .end local v36    # "toastTV":Landroid/widget/TextView;
    :cond_7d7
    const/4 v4, 0x0

    goto :goto_795

    .line 1305
    :cond_7d9
    const/16 v4, 0x75

    move/from16 v0, p1

    if-ne v0, v4, :cond_7f4

    .line 1306
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x1

    # setter for: Lorg/telegram/ui/ChatActivity;->goToFirstMsg:Z
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$3402(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 1307
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    # invokes: Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZI)V
    invoke-static {v4, v5, v7, v8, v10}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;IIZI)V

    goto/16 :goto_7d

    .line 1308
    :cond_7f4
    const/16 v4, 0x76

    move/from16 v0, p1

    if-ne v0, v4, :cond_81a

    .line 1309
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 1310
    .restart local v31    # "preferences":Landroid/content/SharedPreferences;
    const-string v4, "bookmark_message"

    const/4 v5, -0x1

    move-object/from16 v0, v31

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 1311
    .local v23, "bookmarkMessageId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move/from16 v0, v23

    # invokes: Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZI)V
    invoke-static {v4, v0, v5, v7, v8}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;IIZI)V

    goto/16 :goto_7d

    .line 1366
    .end local v23    # "bookmarkMessageId":I
    .end local v31    # "preferences":Landroid/content/SharedPreferences;
    :cond_81a
    const/16 v4, 0x11

    move/from16 v0, p1

    if-ne v0, v4, :cond_887

    .line 1367
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_7d

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_7d

    .line 1370
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v4, :cond_876

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_876

    .line 1371
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 1372
    .restart local v21    # "args":Landroid/os/Bundle;
    const-string v4, "user_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1373
    const-string v4, "addContact"

    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v5, Lorg/telegram/ui/ContactAddActivity;

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Lorg/telegram/ui/ContactAddActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_7d

    .line 1376
    .end local v21    # "args":Landroid/os/Bundle;
    :cond_876
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->shareMyContact(Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_7d

    .line 1378
    :cond_887
    const/16 v4, 0x12

    move/from16 v0, p1

    if-ne v0, v4, :cond_897

    .line 1379
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    # invokes: Lorg/telegram/ui/ChatActivity;->toggleMute(Z)V
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;Z)V

    goto/16 :goto_7d

    .line 1380
    :cond_897
    const/16 v4, 0x15

    move/from16 v0, p1

    if-ne v0, v4, :cond_8be

    .line 1381
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5, v10, v11, v7}, Lorg/telegram/ui/Components/AlertsCreator;->createReportAlert(Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_7d

    .line 1382
    :cond_8be
    const/16 v4, 0x13

    move/from16 v0, p1

    if-ne v0, v4, :cond_96a

    .line 1383
    const/4 v9, 0x0

    .line 1384
    .restart local v9    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/16 v20, 0x1

    .restart local v20    # "a":I
    :goto_8c7
    if-ltz v20, :cond_925

    .line 1385
    if-nez v9, :cond_908

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v20

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_908

    .line 1386
    new-instance v27, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v20

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1387
    .restart local v27    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->messagesDict:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$3800(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v20

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "messageObject":Lorg/telegram/messenger/MessageObject;
    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 1389
    .end local v27    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_908
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v20

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1390
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->selectedMessagesCanCopyIds:[Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$1900(Lorg/telegram/ui/ChatActivity;)[Ljava/util/HashMap;

    move-result-object v4

    aget-object v4, v4, v20

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1384
    add-int/lit8 v20, v20, -0x1

    goto :goto_8c7

    .line 1392
    :cond_925
    if-eqz v9, :cond_946

    iget-object v4, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gtz v4, :cond_93b

    iget-object v4, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gez v4, :cond_946

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v4, :cond_946

    .line 1393
    :cond_93b
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/ChatActivity;->showReplyPanel(ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$WebPage;Z)V

    .line 1395
    :cond_946
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    # setter for: Lorg/telegram/ui/ChatActivity;->cantDeleteMessagesCount:I
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$2002(Lorg/telegram/ui/ChatActivity;I)I

    .line 1396
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$3900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 1397
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x1

    # invokes: Lorg/telegram/ui/ChatActivity;->updatePinnedMessageView(Z)V
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;Z)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->updateVisibleRows()V
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$2300(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_7d

    .line 1399
    .end local v9    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v20    # "a":I
    :cond_96a
    const/16 v4, 0xe

    move/from16 v0, p1

    if-ne v0, v4, :cond_979

    .line 1400
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # invokes: Lorg/telegram/ui/ChatActivity;->openAttachMenu()V
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_7d

    .line 1401
    :cond_979
    const/16 v4, 0x1e

    move/from16 v0, p1

    if-ne v0, v4, :cond_99c

    .line 1402
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v10

    const-string v11, "/help"

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v10 .. v19}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_7d

    .line 1403
    :cond_99c
    const/16 v4, 0x1f

    move/from16 v0, p1

    if-ne v0, v4, :cond_9bf

    .line 1404
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v10

    const-string v11, "/settings"

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v10 .. v19}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_7d

    .line 1405
    :cond_9bf
    const/16 v4, 0x28

    move/from16 v0, p1

    if-ne v0, v4, :cond_9cf

    .line 1406
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    # invokes: Lorg/telegram/ui/ChatActivity;->openSearchWithText(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 1407
    :cond_9cf
    const/16 v4, 0x20

    move/from16 v0, p1

    if-ne v0, v4, :cond_7d

    .line 1408
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_7d

    .line 1409
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$9;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getUserFull(I)Lorg/telegram/tgnet/TLRPC$TL_userFull;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_userFull;)V

    goto/16 :goto_7d
.end method
