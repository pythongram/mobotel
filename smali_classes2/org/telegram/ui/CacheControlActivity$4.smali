.class Lorg/telegram/ui/CacheControlActivity$4;
.super Ljava/lang/Object;
.source "CacheControlActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CacheControlActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/CacheControlActivity;

    .prologue
    .line 311
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 314
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/CacheControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_9

    .line 520
    :cond_8
    :goto_8
    return-void

    .line 317
    :cond_9
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->keepMediaRow:I
    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$1200(Lorg/telegram/ui/CacheControlActivity;)I

    move-result v8

    if-ne p2, v8, :cond_51

    .line 318
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/CacheControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 319
    .local v1, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const-string v10, "Weeks"

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "Months"

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "KeepMediaForever"

    const v11, 0x7f0702b5

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    new-instance v9, Lorg/telegram/ui/CacheControlActivity$4$1;

    invoke-direct {v9, p0}, Lorg/telegram/ui/CacheControlActivity$4$1;-><init>(Lorg/telegram/ui/CacheControlActivity$4;)V

    invoke-virtual {v1, v8, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 336
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/CacheControlActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_8

    .line 337
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    :cond_51
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->databaseRow:I
    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$1300(Lorg/telegram/ui/CacheControlActivity;)I

    move-result v8

    if-ne p2, v8, :cond_a5

    .line 338
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/CacheControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 339
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v8, "AppName"

    const v9, 0x7f070092

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 340
    const-string v8, "Cancel"

    const v9, 0x7f0700fe

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 341
    const-string v8, "LocalDatabaseClear"

    const v9, 0x7f0702ef

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 342
    const-string v8, "CacheClear"

    const v9, 0x7f0700e9

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/CacheControlActivity$4$2;

    invoke-direct {v9, p0}, Lorg/telegram/ui/CacheControlActivity$4$2;-><init>(Lorg/telegram/ui/CacheControlActivity$4;)V

    invoke-virtual {v1, v8, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 446
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/CacheControlActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_8

    .line 447
    .end local v1    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_a5
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->cacheRow:I
    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$1500(Lorg/telegram/ui/CacheControlActivity;)I

    move-result v8

    if-ne p2, v8, :cond_8

    .line 448
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->totalSize:J
    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$800(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/CacheControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 451
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/CacheControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 452
    .local v1, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 453
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 454
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/CacheControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 455
    .local v4, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 456
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_e4
    const/4 v8, 0x6

    if-ge v0, v8, :cond_1b8

    .line 457
    const-wide/16 v6, 0x0

    .line 458
    .local v6, "size":J
    const/4 v5, 0x0

    .line 459
    .local v5, "name":Ljava/lang/String;
    if-nez v0, :cond_14c

    .line 460
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->photoSize:J
    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$300(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v6

    .line 461
    const-string v8, "LocalPhotoCache"

    const v9, 0x7f0702f4

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 478
    :cond_fb
    :goto_fb
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_1ae

    .line 479
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->clear:[Z
    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$1100(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v8

    const/4 v9, 0x1

    aput-boolean v9, v8, v0

    .line 480
    new-instance v3, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/CacheControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v3, v8, v9}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    .line 481
    .local v3, "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTag(Ljava/lang/Object;)V

    .line 482
    const/4 v8, 0x0

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 483
    const/4 v8, -0x1

    const/16 v9, 0x30

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v3, v5, v8, v9, v10}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 485
    const-string v8, "dialogTextBlack"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTextColor(I)V

    .line 486
    new-instance v8, Lorg/telegram/ui/CacheControlActivity$4$3;

    invoke-direct {v8, p0}, Lorg/telegram/ui/CacheControlActivity$4$3;-><init>(Lorg/telegram/ui/CacheControlActivity$4;)V

    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    .end local v3    # "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    :goto_149
    add-int/lit8 v0, v0, 0x1

    goto :goto_e4

    .line 462
    :cond_14c
    const/4 v8, 0x1

    if-ne v0, v8, :cond_15f

    .line 463
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->videoSize:J
    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$400(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v6

    .line 464
    const-string v8, "LocalVideoCache"

    const v9, 0x7f0702f5

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_fb

    .line 465
    :cond_15f
    const/4 v8, 0x2

    if-ne v0, v8, :cond_172

    .line 466
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->documentsSize:J
    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$500(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v6

    .line 467
    const-string v8, "LocalDocumentCache"

    const v9, 0x7f0702f1

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_fb

    .line 468
    :cond_172
    const/4 v8, 0x3

    if-ne v0, v8, :cond_186

    .line 469
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->musicSize:J
    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$600(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v6

    .line 470
    const-string v8, "LocalMusicCache"

    const v9, 0x7f0702f3

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_fb

    .line 471
    :cond_186
    const/4 v8, 0x4

    if-ne v0, v8, :cond_19a

    .line 472
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->audioSize:J
    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$700(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v6

    .line 473
    const-string v8, "LocalAudioCache"

    const v9, 0x7f0702ec

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_fb

    .line 474
    :cond_19a
    const/4 v8, 0x5

    if-ne v0, v8, :cond_fb

    .line 475
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->cacheSize:J
    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$000(Lorg/telegram/ui/CacheControlActivity;)J

    move-result-wide v6

    .line 476
    const-string v8, "LocalCache"

    const v9, 0x7f0702ed

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_fb

    .line 496
    :cond_1ae
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    # getter for: Lorg/telegram/ui/CacheControlActivity;->clear:[Z
    invoke-static {v8}, Lorg/telegram/ui/CacheControlActivity;->access$1100(Lorg/telegram/ui/CacheControlActivity;)[Z

    move-result-object v8

    const/4 v9, 0x0

    aput-boolean v9, v8, v0

    goto :goto_149

    .line 499
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "size":J
    :cond_1b8
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/CacheControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v2, v8, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    .line 500
    .local v2, "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    const/4 v8, 0x0

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 501
    const-string v8, "ClearMediaCache"

    const v9, 0x7f07017b

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 502
    const-string v8, "windowBackgroundWhiteRedText"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 503
    new-instance v8, Lorg/telegram/ui/CacheControlActivity$4$4;

    invoke-direct {v8, p0}, Lorg/telegram/ui/CacheControlActivity$4$4;-><init>(Lorg/telegram/ui/CacheControlActivity$4;)V

    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    const/4 v8, -0x1

    const/16 v9, 0x30

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 517
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 518
    iget-object v8, p0, Lorg/telegram/ui/CacheControlActivity$4;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/CacheControlActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_8
.end method
