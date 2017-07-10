.class Lorg/telegram/messenger/ContactsController$8$1;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$8;

.field final synthetic val$isEmpty:Z

.field final synthetic val$usersDict:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$8;Ljava/util/HashMap;Z)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/messenger/ContactsController$8;

    .prologue
    .line 1010
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$8$1;->val$usersDict:Ljava/util/HashMap;

    iput-boolean p3, p0, Lorg/telegram/messenger/ContactsController$8$1;->val$isEmpty:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 30

    .prologue
    .line 1013
    const-string v4, "done loading contacts"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$from:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_45

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_36

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v26, 0x3e8

    div-long v4, v4, v26

    sget v26, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sub-long v4, v4, v26

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v26, 0x15180

    cmp-long v4, v4, v26

    if-ltz v4, :cond_45

    .line 1015
    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v5, 0x0

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v4, v5, v0}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZZ)V

    .line 1266
    :goto_44
    return-void

    .line 1018
    :cond_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$from:I

    if-nez v4, :cond_5c

    .line 1019
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v26, 0x3e8

    div-long v4, v4, v26

    long-to-int v4, v4

    sput v4, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    .line 1020
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1023
    :cond_5c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1024
    .local v18, "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ContactsController$8$1;->val$usersDict:Ljava/util/HashMap;

    move-object/from16 v0, v18

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_66

    move-object/from16 v0, v18

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v26

    move/from16 v0, v26

    if-eq v5, v0, :cond_66

    .line 1025
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v5, 0x0

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v4, v5, v0}, Lorg/telegram/messenger/ContactsController;->loadContacts(ZZ)V

    .line 1026
    const-string v4, "contacts are broken, load from server"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_44

    .line 1031
    .end local v18    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_a8
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$from:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_13a

    .line 1032
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v5, v5, Lorg/telegram/messenger/ContactsController$8;->val$usersArr:Ljava/util/ArrayList;

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v4, v5, v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1033
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v0, v4, Lorg/telegram/messenger/ContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$from:I

    const/16 v27, 0x2

    move/from16 v0, v27

    if-eq v4, v0, :cond_12a

    const/4 v4, 0x1

    :goto_e3
    move-object/from16 v0, v26

    invoke-virtual {v5, v0, v4}, Lorg/telegram/messenger/MessagesStorage;->putContacts(Ljava/util/ArrayList;Z)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/messenger/ContactsController$8$1$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/messenger/ContactsController$8$1$1;-><init>(Lorg/telegram/messenger/ContactsController$8$1;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1045
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1046
    .local v21, "ids":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_107
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1047
    .local v16, "aContactsArr":Lorg/telegram/tgnet/TLRPC$TL_contact;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_120

    .line 1048
    const-string v5, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    :cond_120
    move-object/from16 v0, v16

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_107

    .line 1033
    .end local v16    # "aContactsArr":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v21    # "ids":Ljava/lang/StringBuilder;
    :cond_12a
    const/4 v4, 0x0

    goto :goto_e3

    .line 1052
    .restart local v21    # "ids":Ljava/lang/StringBuilder;
    :cond_12c
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    .line 1053
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1056
    .end local v21    # "ids":Ljava/lang/StringBuilder;
    :cond_13a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/messenger/ContactsController$8$1$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/messenger/ContactsController$8$1$2;-><init>(Lorg/telegram/messenger/ContactsController$8$1;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1067
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 1068
    .local v6, "contactsDictionary":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1069
    .local v7, "sectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1070
    .local v8, "sectionsDictMutual":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1071
    .local v9, "sortedSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    .local v10, "sortedSectionsArrayMutual":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .line 1075
    .local v19, "contactsByPhonesDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1076
    .local v11, "onlineSectionsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1077
    .local v12, "onlineSectionsDictMutual":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1078
    .local v13, "onlineSortedSectionsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1081
    .local v14, "onlineSortedSectionsArrayMutual":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$700(Lorg/telegram/messenger/ContactsController;)Z

    move-result v4

    if-nez v4, :cond_18a

    .line 1082
    new-instance v19, Ljava/util/HashMap;

    .end local v19    # "contactsByPhonesDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 1085
    .restart local v19    # "contactsByPhonesDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_18a
    move-object/from16 v20, v19

    .line 1087
    .local v20, "contactsByPhonesDictFinal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    const/4 v15, 0x0

    .local v15, "a":I
    :goto_18d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_2dd

    .line 1088
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->val$contactsArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1089
    .local v25, "value":Lorg/telegram/tgnet/TLRPC$TL_contact;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->val$usersDict:Ljava/util/HashMap;

    move-object/from16 v0, v25

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/telegram/tgnet/TLRPC$User;

    .line 1090
    .local v24, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v24, :cond_1bc

    .line 1087
    :cond_1b9
    :goto_1b9
    add-int/lit8 v15, v15, 0x1

    goto :goto_18d

    .line 1093
    :cond_1bc
    move-object/from16 v0, v25

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    move-object/from16 v0, v25

    invoke-virtual {v6, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1094
    if-eqz v19, :cond_1dc

    move-object/from16 v0, v24

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1dc

    .line 1095
    move-object/from16 v0, v24

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    :cond_1dc
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v22

    .line 1099
    .local v22, "key":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1ef

    .line 1100
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 1102
    :cond_1ef
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2d7

    .line 1103
    const-string v22, "#"

    .line 1107
    :goto_1f7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$1100(Lorg/telegram/messenger/ContactsController;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1108
    .local v23, "replace":Ljava/lang/String;
    if-eqz v23, :cond_20d

    .line 1109
    move-object/from16 v22, v23

    .line 1113
    :cond_20d
    move-object/from16 v0, v24

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    if-eq v4, v5, :cond_241

    move-object/from16 v0, v24

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_22d

    move-object/from16 v0, v24

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    if-gt v4, v5, :cond_241

    :cond_22d
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v24

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28b

    .line 1114
    :cond_241
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 1115
    .local v17, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    if-nez v17, :cond_25c

    .line 1116
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1117
    .restart local v17    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    :cond_25c
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    if-eqz v4, :cond_28b

    .line 1122
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    check-cast v17, Ljava/util/ArrayList;

    .line 1123
    .restart local v17    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    if-nez v17, :cond_284

    .line 1124
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    .restart local v17    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    :cond_284
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    .end local v17    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    :cond_28b
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 1134
    .restart local v17    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    if-nez v17, :cond_2a6

    .line 1135
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    .restart local v17    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    :cond_2a6
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1140
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    if-eqz v4, :cond_1b9

    .line 1141
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    check-cast v17, Ljava/util/ArrayList;

    .line 1142
    .restart local v17    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    if-nez v17, :cond_2ce

    .line 1143
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    .restart local v17    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    :cond_2ce
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b9

    .line 1105
    .end local v17    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_contact;>;"
    .end local v23    # "replace":Ljava/lang/String;
    :cond_2d7
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_1f7

    .line 1152
    .end local v22    # "key":Ljava/lang/String;
    .end local v24    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v25    # "value":Lorg/telegram/tgnet/TLRPC$TL_contact;
    :cond_2dd
    new-instance v4, Lorg/telegram/messenger/ContactsController$8$1$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/ContactsController$8$1$3;-><init>(Lorg/telegram/messenger/ContactsController$8$1;)V

    invoke-static {v13, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1165
    new-instance v4, Lorg/telegram/messenger/ContactsController$8$1$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/ContactsController$8$1$4;-><init>(Lorg/telegram/messenger/ContactsController$8$1;)V

    invoke-static {v14, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1180
    new-instance v4, Lorg/telegram/messenger/ContactsController$8$1$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/ContactsController$8$1$5;-><init>(Lorg/telegram/messenger/ContactsController$8$1;)V

    invoke-static {v9, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1194
    new-instance v4, Lorg/telegram/messenger/ContactsController$8$1$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/ContactsController$8$1$6;-><init>(Lorg/telegram/messenger/ContactsController$8$1;)V

    invoke-static {v10, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1208
    new-instance v4, Lorg/telegram/messenger/ContactsController$8$1$7;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v14}, Lorg/telegram/messenger/ContactsController$8$1$7;-><init>(Lorg/telegram/messenger/ContactsController$8$1;Landroid/util/SparseArray;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$800(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_361

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-boolean v4, v4, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    if-eqz v4, :cond_361

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$700(Lorg/telegram/messenger/ContactsController;)Z

    move-result v4

    if-eqz v4, :cond_361

    .line 1242
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v5, v5, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v5}, Lorg/telegram/messenger/ContactsController;->access$800(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v5

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v4, v5, v0, v1, v2}, Lorg/telegram/messenger/ContactsController;->access$900(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1243
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$800(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1246
    :cond_361
    if-eqz v20, :cond_371

    .line 1247
    new-instance v4, Lorg/telegram/messenger/ContactsController$8$1$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Lorg/telegram/messenger/ContactsController$8$1$8;-><init>(Lorg/telegram/messenger/ContactsController$8$1;Ljava/util/HashMap;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_44

    .line 1264
    :cond_371
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$8$1;->this$1:Lorg/telegram/messenger/ContactsController$8;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$8;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    goto/16 :goto_44
.end method
