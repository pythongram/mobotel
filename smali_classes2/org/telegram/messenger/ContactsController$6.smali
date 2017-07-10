.class Lorg/telegram/messenger/ContactsController$6;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->performSyncPhoneBook(Ljava/util/HashMap;ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ContactsController;

.field final synthetic val$contactHashMap:Ljava/util/HashMap;

.field final synthetic val$first:Z

.field final synthetic val$force:Z

.field final synthetic val$request:Z

.field final synthetic val$schedule:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;ZZZZ)V
    .registers 7
    .param p1, "this$0"    # Lorg/telegram/messenger/ContactsController;

    .prologue
    .line 564
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    iput-boolean p3, p0, Lorg/telegram/messenger/ContactsController$6;->val$schedule:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    iput-boolean p5, p0, Lorg/telegram/messenger/ContactsController$6;->val$first:Z

    iput-boolean p6, p0, Lorg/telegram/messenger/ContactsController$6;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 39

    .prologue
    .line 568
    const/4 v15, 0x1

    .line 592
    .local v15, "disableDeletion":Z
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 593
    .local v13, "contactShortHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/ContactsController$Contact;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 594
    .local v17, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/ContactsController$Contact;

    .line 595
    .local v11, "c":Lorg/telegram/messenger/ContactsController$Contact;
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_25
    iget-object v5, v11, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v10, v5, :cond_12

    .line 596
    iget-object v5, v11, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v13, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    add-int/lit8 v10, v10, 0x1

    goto :goto_25

    .line 600
    .end local v10    # "a":I
    .end local v11    # "c":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    :cond_39
    const-string v4, "start read contacts from phone"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 601
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$schedule:Z

    if-nez v4, :cond_4b

    .line 602
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$200(Lorg/telegram/messenger/ContactsController;)Z

    .line 604
    :cond_4b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$500(Lorg/telegram/messenger/ContactsController;)Ljava/util/HashMap;

    move-result-object v9

    .line 605
    .local v9, "contactsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 606
    .local v8, "contactsBookShort":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/ContactsController$Contact;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v26

    .line 608
    .local v26, "oldCount":I
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v31, "toImport":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_434

    .line 610
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_77
    :goto_77
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_362

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .line 611
    .local v27, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    .line 612
    .local v21, "id":Ljava/lang/Integer;
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/telegram/messenger/ContactsController$Contact;

    .line 613
    .local v33, "value":Lorg/telegram/messenger/ContactsController$Contact;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/messenger/ContactsController$Contact;

    .line 614
    .local v18, "existing":Lorg/telegram/messenger/ContactsController$Contact;
    if-nez v18, :cond_c2

    .line 615
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_9e
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_c2

    .line 616
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/ContactsController$Contact;

    .line 617
    .restart local v11    # "c":Lorg/telegram/messenger/ContactsController$Contact;
    if-eqz v11, :cond_14f

    .line 618
    move-object/from16 v18, v11

    .line 619
    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 625
    .end local v10    # "a":I
    .end local v11    # "c":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_c2
    if-eqz v18, :cond_153

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e0

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fc

    :cond_e0
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_153

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_153

    :cond_fc
    const/16 v25, 0x1

    .line 626
    .local v25, "nameChanged":Z
    :goto_fe
    if-eqz v18, :cond_102

    if-eqz v25, :cond_1c6

    .line 627
    :cond_102
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_103
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_1b9

    .line 628
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 629
    .local v30, "sphone":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    if-eqz v18, :cond_156

    .line 631
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v23

    .line 632
    .local v23, "index":I
    const/4 v4, -0x1

    move/from16 v0, v23

    if-eq v0, v4, :cond_156

    .line 633
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 634
    .local v14, "deleted":Ljava/lang/Integer;
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v4, v10, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 635
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v34, 0x1

    move/from16 v0, v34

    if-ne v4, v0, :cond_156

    .line 627
    .end local v14    # "deleted":Ljava/lang/Integer;
    .end local v23    # "index":I
    :cond_14c
    :goto_14c
    add-int/lit8 v10, v10, 0x1

    goto :goto_103

    .line 615
    .end local v25    # "nameChanged":Z
    .end local v30    # "sphone":Ljava/lang/String;
    .restart local v11    # "c":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_14f
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_9e

    .line 625
    .end local v10    # "a":I
    .end local v11    # "c":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_153
    const/16 v25, 0x0

    goto :goto_fe

    .line 640
    .restart local v10    # "a":I
    .restart local v25    # "nameChanged":Z
    .restart local v30    # "sphone":Ljava/lang/String;
    :cond_156
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v4, :cond_14c

    .line 641
    if-nez v25, :cond_16c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14c

    .line 645
    :cond_16c
    new-instance v22, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct/range {v22 .. v22}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 646
    .local v22, "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    move-object/from16 v0, v33

    iget v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    int-to-long v0, v4

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, v22

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 647
    move-object/from16 v0, v22

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    move-wide/from16 v34, v0

    int-to-long v0, v10

    move-wide/from16 v36, v0

    const/16 v4, 0x20

    shl-long v36, v36, v4

    or-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, v22

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 648
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 649
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 650
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 651
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14c

    .line 654
    .end local v22    # "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    .end local v30    # "sphone":Ljava/lang/String;
    :cond_1b9
    if-eqz v18, :cond_77

    .line 655
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_77

    .line 658
    .end local v10    # "a":I
    :cond_1c6
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_1c7
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_34d

    .line 659
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 660
    .restart local v30    # "sphone":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v23

    .line 662
    .restart local v23    # "index":I
    const/16 v16, 0x0

    .line 663
    .local v16, "emptyNameReimport":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v4, :cond_244

    .line 664
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 665
    .local v12, "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    if-eqz v12, :cond_244

    .line 666
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v32

    .line 667
    .local v32, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v32, :cond_244

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_244

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_244

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_240

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_244

    .line 668
    :cond_240
    const/16 v23, -0x1

    .line 669
    const/16 v16, 0x1

    .line 673
    .end local v12    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v32    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_244
    const/4 v4, -0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_310

    .line 674
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v4, :cond_2b9

    .line 675
    if-nez v16, :cond_2c3

    .line 676
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 677
    .restart local v12    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    if-eqz v12, :cond_2c3

    .line 678
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v32

    .line 679
    .restart local v32    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v32, :cond_2c3

    .line 680
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v4, :cond_2bd

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 681
    .local v20, "firstName":Ljava/lang/String;
    :goto_281
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v4, :cond_2c0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 682
    .local v24, "lastName":Ljava/lang/String;
    :goto_28d
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a5

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b9

    :cond_2a5
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c3

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c3

    .line 658
    .end local v12    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v20    # "firstName":Ljava/lang/String;
    .end local v24    # "lastName":Ljava/lang/String;
    .end local v32    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2b9
    :goto_2b9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1c7

    .line 680
    .restart local v12    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .restart local v32    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2bd
    const-string v20, ""

    goto :goto_281

    .line 681
    .restart local v20    # "firstName":Ljava/lang/String;
    :cond_2c0
    const-string v24, ""

    goto :goto_28d

    .line 689
    .end local v12    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v20    # "firstName":Ljava/lang/String;
    .end local v32    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2c3
    new-instance v22, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct/range {v22 .. v22}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 690
    .restart local v22    # "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    move-object/from16 v0, v33

    iget v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    int-to-long v0, v4

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, v22

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 691
    move-object/from16 v0, v22

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    move-wide/from16 v34, v0

    int-to-long v0, v10

    move-wide/from16 v36, v0

    const/16 v4, 0x20

    shl-long v36, v36, v4

    or-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, v22

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 692
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 693
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 694
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 695
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b9

    .line 698
    .end local v22    # "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    :cond_310
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v4, v10, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 699
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 700
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 701
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 702
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2b9

    .line 705
    .end local v16    # "emptyNameReimport":Z
    .end local v23    # "index":I
    .end local v30    # "sphone":Ljava/lang/String;
    :cond_34d
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 706
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_77

    .line 710
    .end local v10    # "a":I
    .end local v18    # "existing":Lorg/telegram/messenger/ContactsController$Contact;
    .end local v21    # "id":Ljava/lang/Integer;
    .end local v25    # "nameChanged":Z
    .end local v27    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    .end local v33    # "value":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_362
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$first:Z

    if-nez v4, :cond_386

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_386

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_386

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v4

    move/from16 v0, v26

    if-ne v0, v4, :cond_386

    .line 711
    const-string v4, "contacts not changed!"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 927
    :cond_385
    :goto_385
    return-void

    .line 714
    :cond_386
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v4, :cond_3bf

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3bf

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3bf

    .line 715
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3a9

    .line 716
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;)V

    .line 718
    :cond_3a9
    if-nez v15, :cond_3bf

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3bf

    .line 719
    new-instance v4, Lorg/telegram/messenger/ContactsController$6$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/ContactsController$6$1;-><init>(Lorg/telegram/messenger/ContactsController$6;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 806
    :cond_3bf
    const-string v4, "done processing contacts"

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 808
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v4, :cond_544

    .line 809
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_536

    .line 817
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 818
    .local v6, "contactsMapToSave":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->access$002(Lorg/telegram/messenger/ContactsController;I)I

    .line 819
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x43fa0000    # 500.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v7, v4

    .line 820
    .local v7, "count":I
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_3ec
    if-ge v10, v7, :cond_385

    .line 821
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 822
    .local v19, "finalToImport":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;>;"
    mul-int/lit16 v4, v10, 0x1f4

    add-int/lit8 v5, v10, 0x1

    mul-int/lit16 v5, v5, 0x1f4

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v34

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 823
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;-><init>()V

    .line 824
    .local v29, "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;
    move-object/from16 v0, v19

    move-object/from16 v1, v29

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    .line 825
    const/4 v4, 0x0

    move-object/from16 v0, v29

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->replace:Z

    .line 826
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v34

    new-instance v4, Lorg/telegram/messenger/ContactsController$6$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/ContactsController$6$2;-><init>(Lorg/telegram/messenger/ContactsController$6;Ljava/util/HashMap;ILjava/util/HashMap;Ljava/util/HashMap;)V

    const/4 v5, 0x6

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 820
    add-int/lit8 v10, v10, 0x1

    goto :goto_3ec

    .line 776
    .end local v6    # "contactsMapToSave":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    .end local v7    # "count":I
    .end local v10    # "a":I
    .end local v19    # "finalToImport":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;>;"
    .end local v29    # "req":Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;
    :cond_434
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v4, :cond_3bf

    .line 777
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_442
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3bf

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map$Entry;

    .line 778
    .restart local v27    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/telegram/messenger/ContactsController$Contact;

    .line 779
    .restart local v33    # "value":Lorg/telegram/messenger/ContactsController$Contact;
    invoke-interface/range {v27 .. v27}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 780
    .local v21, "id":I
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_45f
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_442

    .line 781
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$force:Z

    if-nez v4, :cond_4eb

    .line 782
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 783
    .local v28, "phone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 784
    .restart local v12    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    if-eqz v12, :cond_4eb

    .line 785
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v32

    .line 786
    .restart local v32    # "user":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v32, :cond_4eb

    .line 787
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v4, :cond_4e5

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 788
    .restart local v20    # "firstName":Ljava/lang/String;
    :goto_4a9
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v4, :cond_4e8

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 789
    .restart local v24    # "lastName":Ljava/lang/String;
    :goto_4b5
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4cd

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e1

    :cond_4cd
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4eb

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4eb

    .line 780
    .end local v12    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v20    # "firstName":Ljava/lang/String;
    .end local v24    # "lastName":Ljava/lang/String;
    .end local v28    # "phone":Ljava/lang/String;
    .end local v32    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4e1
    :goto_4e1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_45f

    .line 787
    .restart local v12    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .restart local v28    # "phone":Ljava/lang/String;
    .restart local v32    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4e5
    const-string v20, ""

    goto :goto_4a9

    .line 788
    .restart local v20    # "firstName":Ljava/lang/String;
    :cond_4e8
    const-string v24, ""

    goto :goto_4b5

    .line 795
    .end local v12    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v20    # "firstName":Ljava/lang/String;
    .end local v28    # "phone":Ljava/lang/String;
    .end local v32    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4eb
    new-instance v22, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct/range {v22 .. v22}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 796
    .restart local v22    # "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, v22

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 797
    move-object/from16 v0, v22

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    move-wide/from16 v34, v0

    int-to-long v0, v10

    move-wide/from16 v36, v0

    const/16 v4, 0x20

    shl-long v36, v36, v4

    or-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, v22

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    .line 798
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 799
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 800
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 801
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e1

    .line 882
    .end local v10    # "a":I
    .end local v21    # "id":I
    .end local v22    # "imp":Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;
    .end local v27    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/ContactsController$Contact;>;"
    .end local v33    # "value":Lorg/telegram/messenger/ContactsController$Contact;
    :cond_536
    sget-object v4, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/ContactsController$6$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v9}, Lorg/telegram/messenger/ContactsController$6$3;-><init>(Lorg/telegram/messenger/ContactsController$6;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_385

    .line 907
    :cond_544
    sget-object v4, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/ContactsController$6$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v9}, Lorg/telegram/messenger/ContactsController$6$4;-><init>(Lorg/telegram/messenger/ContactsController$6;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 923
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_385

    .line 924
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;)V

    goto/16 :goto_385
.end method
