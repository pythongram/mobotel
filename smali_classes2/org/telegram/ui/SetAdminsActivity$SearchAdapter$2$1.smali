.class Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2$1;
.super Ljava/lang/Object;
.source "SetAdminsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2;

.field final synthetic val$contactsCopy:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "this$2"    # Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2;

    .prologue
    .line 507
    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2$1;->this$2:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2;

    iput-object p2, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2$1;->val$contactsCopy:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 510
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2$1;->this$2:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2;

    iget-object v13, v13, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2;->val$query:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 511
    .local v9, "search1":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_28

    .line 512
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2$1;->this$2:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2;

    iget-object v13, v13, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2;->this$1:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    # invokes: Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v13, v14, v15}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->access$2000(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 562
    :goto_27
    return-void

    .line 515
    :cond_28
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v13

    invoke-virtual {v13, v9}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 516
    .local v10, "search2":Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3c

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_3d

    .line 517
    :cond_3c
    const/4 v10, 0x0

    .line 519
    :cond_3d
    if-eqz v10, :cond_84

    const/4 v13, 0x1

    :goto_40
    add-int/lit8 v13, v13, 0x1

    new-array v8, v13, [Ljava/lang/String;

    .line 520
    .local v8, "search":[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v9, v8, v13

    .line 521
    if-eqz v10, :cond_4c

    .line 522
    const/4 v13, 0x1

    aput-object v10, v8, v13

    .line 525
    :cond_4c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v6, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$ChatParticipant;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v7, "resultArrayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_57
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2$1;->val$contactsCopy:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_140

    .line 529
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2$1;->val$contactsCopy:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 530
    .local v4, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v13

    iget v14, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    .line 531
    .local v12, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget v13, v12, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v14

    if-ne v13, v14, :cond_86

    .line 528
    :cond_81
    :goto_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 519
    .end local v1    # "a":I
    .end local v4    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v6    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$ChatParticipant;>;"
    .end local v7    # "resultArrayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v8    # "search":[Ljava/lang/String;
    .end local v12    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_84
    const/4 v13, 0x0

    goto :goto_40

    .line 535
    .restart local v1    # "a":I
    .restart local v4    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .restart local v6    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$ChatParticipant;>;"
    .restart local v7    # "resultArrayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v8    # "search":[Ljava/lang/String;
    .restart local v12    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_86
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v13, v14}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 536
    .local v3, "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v13

    invoke-virtual {v13, v3}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 537
    .local v11, "tName":Ljava/lang/String;
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a1

    .line 538
    const/4 v11, 0x0

    .line 541
    :cond_a1
    const/4 v2, 0x0

    .line 542
    .local v2, "found":I
    array-length v14, v8

    const/4 v13, 0x0

    :goto_a4
    if-ge v13, v14, :cond_81

    aget-object v5, v8, v13

    .line 543
    .local v5, "q":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_e8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_e8

    if-eqz v11, :cond_fd

    invoke-virtual {v11, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_e8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_fd

    .line 544
    :cond_e8
    const/4 v2, 0x1

    .line 549
    :cond_e9
    :goto_e9
    if-eqz v2, :cond_13c

    .line 550
    const/4 v13, 0x1

    if-ne v2, v13, :cond_10b

    .line 551
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v13, v14, v5}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    :goto_f9
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 545
    :cond_fd
    iget-object v15, v12, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v15, :cond_e9

    iget-object v15, v12, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e9

    .line 546
    const/4 v2, 0x2

    goto :goto_e9

    .line 553
    :cond_10b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "@"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "@"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f9

    .line 542
    :cond_13c
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_a4

    .line 561
    .end local v2    # "found":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v5    # "q":Ljava/lang/String;
    .end local v11    # "tName":Ljava/lang/String;
    .end local v12    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_140
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2$1;->this$2:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2;

    iget-object v13, v13, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2;->this$1:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    # invokes: Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v13, v6, v7}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->access$2000(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_27
.end method
