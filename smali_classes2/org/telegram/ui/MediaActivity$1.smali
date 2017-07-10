.class Lorg/telegram/ui/MediaActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/MediaActivity;

    .prologue
    .line 267
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 37
    .param p1, "id"    # I

    .prologue
    .line 270
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_8b

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$500(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 272
    const/4 v9, 0x1

    .local v9, "a":I
    :goto_14
    if-ltz v9, :cond_26

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 272
    add-int/lit8 v9, v9, -0x1

    goto :goto_14

    .line 275
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v3, 0x0

    # setter for: Lorg/telegram/ui/MediaActivity;->cantDeleteMessagesCount:I
    invoke-static {v2, v3}, Lorg/telegram/ui/MediaActivity;->access$702(Lorg/telegram/ui/MediaActivity;I)I

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v16

    .line 278
    .local v16, "count":I
    const/4 v9, 0x0

    :goto_46
    move/from16 v0, v16

    if-ge v9, v0, :cond_8a

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 280
    .local v15, "child":Landroid/view/View;
    instance-of v2, v15, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v2, :cond_64

    .line 281
    check-cast v15, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .end local v15    # "child":Landroid/view/View;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    .line 278
    :cond_61
    :goto_61
    add-int/lit8 v9, v9, 0x1

    goto :goto_46

    .line 282
    .restart local v15    # "child":Landroid/view/View;
    :cond_64
    instance-of v2, v15, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    if-eqz v2, :cond_77

    .line 283
    const/4 v11, 0x0

    .local v11, "b":I
    :goto_69
    const/4 v2, 0x6

    if-ge v11, v2, :cond_61

    move-object v2, v15

    .line 284
    check-cast v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v11, v3, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell;->setChecked(IZZ)V

    .line 283
    add-int/lit8 v11, v11, 0x1

    goto :goto_69

    .line 286
    .end local v11    # "b":I
    :cond_77
    instance-of v2, v15, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v2, :cond_61

    .line 287
    check-cast v15, Lorg/telegram/ui/Cells/SharedLinkCell;

    .end local v15    # "child":Landroid/view/View;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_61

    .line 291
    .end local v9    # "a":I
    .end local v16    # "count":I
    :cond_83
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity;->finishFragment()V

    .line 544
    :cond_8a
    :goto_8a
    return-void

    .line 295
    :cond_8b
    const/16 v2, 0xd

    move/from16 v0, p1

    if-ne v0, v2, :cond_df

    .line 296
    new-instance v12, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v12, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 298
    .local v12, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    const/4 v2, 0x0

    const-string v3, "TurboAllMedia"

    const v4, 0x7f070803

    .line 299
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v27, v2

    const/4 v2, 0x1

    const-string v3, "TurboDownloadedMedia"

    const v4, 0x7f070808

    .line 300
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v27, v2

    const/4 v2, 0x2

    const-string v3, "TurboNotDownloadedMedia"

    const v4, 0x7f070813

    .line 301
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v27, v2

    .line 303
    .local v27, "items":[Ljava/lang/CharSequence;
    new-instance v2, Lorg/telegram/ui/MediaActivity$1$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/MediaActivity$1$1;-><init>(Lorg/telegram/ui/MediaActivity$1;)V

    move-object/from16 v0, v27

    invoke-virtual {v12, v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/MediaActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_8a

    .line 333
    .end local v12    # "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .end local v27    # "items":[Ljava/lang/CharSequence;
    :cond_df
    const/16 v2, 0xf

    move/from16 v0, p1

    if-ne v0, v2, :cond_1d9

    .line 334
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v30, "tMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    const/4 v9, 0x1

    .restart local v9    # "a":I
    :goto_eb
    if-ltz v9, :cond_17a

    .line 336
    new-instance v26, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 337
    .local v26, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v19, 0x0

    .line 338
    .local v19, "currentEncryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v2

    long-to-int v2, v2

    if-nez v2, :cond_127

    .line 339
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v4

    const/16 v3, 0x20

    shr-long/2addr v4, v3

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v19

    .line 341
    :cond_127
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_169

    .line 342
    if-nez v19, :cond_169

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_141
    :goto_141
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_169

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 344
    .local v22, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MessageObject;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/telegram/messenger/MessageObject;

    .line 345
    .local v29, "msg":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    move-object/from16 v0, v29

    # invokes: Lorg/telegram/ui/MediaActivity;->downloaded(Lorg/telegram/messenger/MessageObject;)Z
    invoke-static {v3, v0}, Lorg/telegram/ui/MediaActivity;->access$1500(Lorg/telegram/ui/MediaActivity;Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-nez v3, :cond_141

    .line 346
    move-object/from16 v0, v29

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_141

    .line 351
    .end local v22    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MessageObject;>;"
    .end local v29    # "msg":Lorg/telegram/messenger/MessageObject;
    :cond_169
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 335
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_eb

    .line 353
    .end local v19    # "currentEncryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v26    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_17a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lorg/telegram/ui/MediaActivity;->DM_AddMessage(Ljava/util/ArrayList;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1600(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->hideActionMode()V

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1700(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$900(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Done"

    const v4, 0x7f0701e8

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v31

    .line 359
    .local v31, "toast":Landroid/widget/Toast;
    invoke-virtual/range {v31 .. v31}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/LinearLayout;

    .line 360
    .local v32, "toastLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 361
    .local v33, "toastTV":Landroid/widget/TextView;
    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 362
    invoke-virtual/range {v31 .. v31}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8a

    .line 363
    .end local v9    # "a":I
    .end local v30    # "tMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v31    # "toast":Landroid/widget/Toast;
    .end local v32    # "toastLayout":Landroid/widget/LinearLayout;
    .end local v33    # "toastTV":Landroid/widget/TextView;
    :cond_1d9
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_1f9

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1300(Lorg/telegram/ui/MediaActivity;)I

    move-result v2

    if-eqz v2, :cond_8a

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v3, 0x0

    # setter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v2, v3}, Lorg/telegram/ui/MediaActivity;->access$1302(Lorg/telegram/ui/MediaActivity;I)I

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->switchToCurrentSelectedMode()V
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1800(Lorg/telegram/ui/MediaActivity;)V

    goto/16 :goto_8a

    .line 369
    :cond_1f9
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_21a

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1300(Lorg/telegram/ui/MediaActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8a

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v3, 0x1

    # setter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v2, v3}, Lorg/telegram/ui/MediaActivity;->access$1302(Lorg/telegram/ui/MediaActivity;I)I

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->switchToCurrentSelectedMode()V
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1800(Lorg/telegram/ui/MediaActivity;)V

    goto/16 :goto_8a

    .line 375
    :cond_21a
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_23b

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1300(Lorg/telegram/ui/MediaActivity;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8a

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v3, 0x3

    # setter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v2, v3}, Lorg/telegram/ui/MediaActivity;->access$1302(Lorg/telegram/ui/MediaActivity;I)I

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->switchToCurrentSelectedMode()V
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1800(Lorg/telegram/ui/MediaActivity;)V

    goto/16 :goto_8a

    .line 381
    :cond_23b
    const/4 v2, 0x6

    move/from16 v0, p1

    if-ne v0, v2, :cond_25c

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1300(Lorg/telegram/ui/MediaActivity;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_8a

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v3, 0x4

    # setter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v2, v3}, Lorg/telegram/ui/MediaActivity;->access$1302(Lorg/telegram/ui/MediaActivity;I)I

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->switchToCurrentSelectedMode()V
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$1800(Lorg/telegram/ui/MediaActivity;)V

    goto/16 :goto_8a

    .line 387
    :cond_25c
    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_42e

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_8a

    .line 391
    new-instance v12, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v12, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 392
    .local v12, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v2, "AreYouSureDeleteMessages"

    const v3, 0x7f0700a9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "items"

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v7}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v8}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v8

    const/16 v34, 0x1

    aget-object v8, v8, v34

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 393
    const-string v2, "AppName"

    const v3, 0x7f070092

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 395
    const/4 v2, 0x1

    new-array v0, v2, [Z

    move-object/from16 v21, v0

    .line 396
    .local v21, "deleteForAll":[Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v28, v0

    .line 397
    .local v28, "lower_id":I
    if-eqz v28, :cond_3cf

    .line 400
    if-lez v28, :cond_344

    .line 401
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v20

    .line 402
    .local v20, "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    const/16 v17, 0x0

    .line 407
    .local v17, "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    :goto_2de
    if-nez v20, :cond_2e6

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_3cf

    .line 408
    :cond_2e6
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v18

    .line 409
    .local v18, "currentDate":I
    if-eqz v20, :cond_2fa

    move-object/from16 v0, v20

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-ne v2, v3, :cond_2fc

    :cond_2fa
    if-eqz v17, :cond_3cf

    .line 410
    :cond_2fc
    const/16 v25, 0x0

    .line 411
    .local v25, "hasOutgoing":Z
    const/4 v9, 0x1

    .restart local v9    # "a":I
    :goto_2ff
    if-ltz v9, :cond_35a

    .line 412
    const/4 v14, 0x0

    .line 413
    .local v14, "channelId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedFiles:[Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/MediaActivity;->access$600(Lorg/telegram/ui/MediaActivity;)[Ljava/util/HashMap;

    move-result-object v2

    aget-object v2, v2, v9

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_314
    :goto_314
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_358

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 414
    .restart local v22    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MessageObject;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/telegram/messenger/MessageObject;

    .line 415
    .restart local v29    # "msg":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v29

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-nez v3, :cond_314

    .line 418
    invoke-virtual/range {v29 .. v29}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v3

    if-eqz v3, :cond_356

    .line 419
    move-object/from16 v0, v29

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int v3, v18, v3

    const v4, 0x2a300

    if-gt v3, v4, :cond_314

    .line 420
    const/16 v25, 0x1

    goto :goto_314

    .line 404
    .end local v9    # "a":I
    .end local v14    # "channelId":I
    .end local v17    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v18    # "currentDate":I
    .end local v20    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v22    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MessageObject;>;"
    .end local v25    # "hasOutgoing":Z
    .end local v29    # "msg":Lorg/telegram/messenger/MessageObject;
    :cond_344
    const/16 v20, 0x0

    .line 405
    .restart local v20    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move/from16 v0, v28

    neg-int v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v17

    .restart local v17    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    goto :goto_2de

    .line 423
    .restart local v9    # "a":I
    .restart local v14    # "channelId":I
    .restart local v18    # "currentDate":I
    .restart local v22    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MessageObject;>;"
    .restart local v25    # "hasOutgoing":Z
    .restart local v29    # "msg":Lorg/telegram/messenger/MessageObject;
    :cond_356
    const/16 v25, 0x0

    .line 427
    .end local v22    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/telegram/messenger/MessageObject;>;"
    .end local v29    # "msg":Lorg/telegram/messenger/MessageObject;
    :cond_358
    if-eqz v25, :cond_3fe

    .line 432
    .end local v14    # "channelId":I
    :cond_35a
    if-eqz v25, :cond_3cf

    .line 433
    new-instance v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 434
    .local v24, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v13, Lorg/telegram/ui/Cells/CheckBoxCell;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v13, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    .line 435
    .local v13, "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 436
    if-eqz v17, :cond_402

    .line 437
    const-string v2, "DeleteForAll"

    const v3, 0x7f0701d3

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v13, v2, v3, v4, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 441
    :goto_393
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_41e

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_39d
    const/4 v4, 0x0

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_426

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_3a8
    const/4 v5, 0x0

    invoke-virtual {v13, v2, v4, v3, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setPadding(IIII)V

    .line 442
    const/4 v2, -0x1

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    new-instance v2, Lorg/telegram/ui/MediaActivity$1$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/MediaActivity$1$2;-><init>(Lorg/telegram/ui/MediaActivity$1;[Z)V

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 457
    .end local v9    # "a":I
    .end local v13    # "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .end local v17    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v18    # "currentDate":I
    .end local v20    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v24    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v25    # "hasOutgoing":Z
    :cond_3cf
    const-string v2, "OK"

    const v3, 0x7f0703d4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/MediaActivity$1$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/MediaActivity$1$3;-><init>(Lorg/telegram/ui/MediaActivity$1;[Z)V

    invoke-virtual {v12, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 491
    const-string v2, "Cancel"

    const v3, 0x7f0700fe

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/MediaActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_8a

    .line 411
    .restart local v9    # "a":I
    .restart local v14    # "channelId":I
    .restart local v17    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v18    # "currentDate":I
    .restart local v20    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v25    # "hasOutgoing":Z
    :cond_3fe
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_2ff

    .line 439
    .end local v14    # "channelId":I
    .restart local v13    # "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .restart local v24    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_402
    const-string v2, "DeleteForUser"

    const v3, 0x7f0701d4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v13, v2, v3, v4, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_393

    .line 441
    :cond_41e
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto/16 :goto_39d

    :cond_426
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto/16 :goto_3a8

    .line 493
    .end local v9    # "a":I
    .end local v12    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v13    # "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .end local v17    # "currentChat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v18    # "currentDate":I
    .end local v20    # "currentUser":Lorg/telegram/tgnet/TLRPC$User;
    .end local v21    # "deleteForAll":[Z
    .end local v24    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v25    # "hasOutgoing":Z
    .end local v28    # "lower_id":I
    :cond_42e
    const/4 v2, 0x3

    move/from16 v0, p1

    if-ne v0, v2, :cond_8a

    .line 494
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 495
    .local v10, "args":Landroid/os/Bundle;
    const-string v2, "onlySelect"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 496
    const-string v2, "dialogsType"

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 497
    new-instance v23, Lorg/telegram/ui/DialogsActivity;

    move-object/from16 v0, v23

    invoke-direct {v0, v10}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 498
    .local v23, "fragment":Lorg/telegram/ui/DialogsActivity;
    new-instance v2, Lorg/telegram/ui/MediaActivity$1$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/MediaActivity$1$4;-><init>(Lorg/telegram/ui/MediaActivity$1;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lorg/telegram/ui/MediaActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_8a
.end method
