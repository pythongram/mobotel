.class Lorg/telegram/ui/TelehgramSettingsActivity$4;
.super Ljava/lang/Object;
.source "TelehgramSettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TelehgramSettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/TelehgramSettingsActivity;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/TelehgramSettingsActivity;

    .prologue
    .line 376
    iput-object p1, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    iput-object p2, p0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 51
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I

    .prologue
    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->PersianDateRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$400(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_5e

    .line 380
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 381
    .local v37, "preferences":Landroid/content/SharedPreferences;
    const-string v43, "persian_date"

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v35

    .line 382
    .local v35, "persianDate":Z
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 383
    .local v17, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 384
    const-string v44, "persian_date"

    if-nez v35, :cond_58

    const/16 v43, 0x1

    :goto_36
    move-object/from16 v0, v17

    move-object/from16 v1, v44

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 385
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 386
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_57

    .line 387
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v35, :cond_5b

    const/16 v43, 0x1

    :goto_50
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1152
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v35    # "persianDate":Z
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    :cond_57
    :goto_57
    return-void

    .line 384
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v35    # "persianDate":Z
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_58
    const/16 v43, 0x0

    goto :goto_36

    .line 387
    .end local p1    # "view":Landroid/view/View;
    :cond_5b
    const/16 v43, 0x0

    goto :goto_50

    .line 393
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v35    # "persianDate":Z
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->swipeTabRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_d1

    .line 394
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 395
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    const-string v43, "swipe_tabs"

    const/16 v44, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    .line 396
    .local v41, "swipeTabs":Z
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 397
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v44, "swipe_tabs"

    if-nez v41, :cond_c1

    const/16 v43, 0x1

    :goto_90
    move-object/from16 v0, v17

    move-object/from16 v1, v44

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 398
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 399
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_b1

    .line 400
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v41, :cond_c4

    const/16 v43, 0x1

    :goto_aa
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 402
    :cond_b1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v43

    if-eqz v43, :cond_c7

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # invokes: Lorg/telegram/ui/TelehgramSettingsActivity;->reLunchApp()V
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$600(Lorg/telegram/ui/TelehgramSettingsActivity;)V

    goto :goto_57

    .line 397
    .restart local p1    # "view":Landroid/view/View;
    :cond_c1
    const/16 v43, 0x0

    goto :goto_90

    .line 400
    .end local p1    # "view":Landroid/view/View;
    :cond_c4
    const/16 v43, 0x0

    goto :goto_aa

    .line 406
    :cond_c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # invokes: Lorg/telegram/ui/TelehgramSettingsActivity;->restartApp()V
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$700(Lorg/telegram/ui/TelehgramSettingsActivity;)V

    goto :goto_57

    .line 411
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    .end local v41    # "swipeTabs":Z
    .restart local p1    # "view":Landroid/view/View;
    :cond_d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->hiddenTabsRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$800(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_2cf

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    if-eqz v43, :cond_57

    .line 413
    const/16 v43, 0x9

    move/from16 v0, v43

    new-array v0, v0, [Z

    move-object/from16 v28, v0

    .line 414
    .local v28, "maskValues":[Z
    new-instance v11, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-direct {v11, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 415
    .local v11, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/16 v43, 0x0

    move/from16 v0, v43

    invoke-virtual {v11, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 416
    new-instance v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 417
    .local v25, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v43, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 418
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 419
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_134
    const/16 v43, 0x6

    move/from16 v0, v43

    if-ge v6, v0, :cond_259

    .line 420
    const/16 v31, 0x0

    .line 421
    .local v31, "name":Ljava/lang/String;
    const/16 v31, 0x0

    .line 422
    if-nez v6, :cond_1b5

    .line 423
    const-string v43, "FavoriteTab"

    const v44, 0x7f0706f9

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    .line 424
    const-string v43, "hideFavs"

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    aput-boolean v43, v28, v6

    .line 441
    :cond_159
    :goto_159
    new-instance v14, Lorg/telegram/ui/Cells/CheckBoxCell;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-direct {v14, v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    .line 442
    .local v14, "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTag(Ljava/lang/Object;)V

    .line 443
    const/16 v43, 0x0

    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    const/16 v43, -0x1

    const/16 v44, 0x30

    invoke-static/range {v43 .. v44}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v43

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-virtual {v0, v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    const-string v43, ""

    aget-boolean v44, v28, v6

    const/16 v45, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-virtual {v14, v0, v1, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 446
    new-instance v43, Lorg/telegram/ui/TelehgramSettingsActivity$4$1;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/TelehgramSettingsActivity$4$1;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity$4;[Z)V

    move-object/from16 v0, v43

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    add-int/lit8 v6, v6, 0x1

    goto :goto_134

    .line 425
    .end local v14    # "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    :cond_1b5
    const/16 v43, 0x1

    move/from16 v0, v43

    if-ne v6, v0, :cond_1d5

    .line 426
    const-string v43, "ContactTab"

    const v44, 0x7f070692

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    .line 427
    const-string v43, "hideUsers"

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    aput-boolean v43, v28, v6

    goto :goto_159

    .line 428
    :cond_1d5
    const/16 v43, 0x2

    move/from16 v0, v43

    if-ne v6, v0, :cond_1f6

    .line 429
    const-string v43, "GroupsTab"

    const v44, 0x7f07071f

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    .line 430
    const-string v43, "hideGroups"

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    aput-boolean v43, v28, v6

    goto/16 :goto_159

    .line 431
    :cond_1f6
    const/16 v43, 0x3

    move/from16 v0, v43

    if-ne v6, v0, :cond_217

    .line 432
    const-string v43, "SGroupsTab"

    const v44, 0x7f0707a5

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    .line 433
    const-string v43, "hideSGroups"

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    aput-boolean v43, v28, v6

    goto/16 :goto_159

    .line 434
    :cond_217
    const/16 v43, 0x4

    move/from16 v0, v43

    if-ne v6, v0, :cond_238

    .line 435
    const-string v43, "ChannelTab"

    const v44, 0x7f070674

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    .line 436
    const-string v43, "hideChannels"

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    aput-boolean v43, v28, v6

    goto/16 :goto_159

    .line 437
    :cond_238
    const/16 v43, 0x5

    move/from16 v0, v43

    if-ne v6, v0, :cond_159

    .line 438
    const-string v43, "RobotTab"

    const v44, 0x7f07079a

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    .line 439
    const-string v43, "hideBots"

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    aput-boolean v43, v28, v6

    goto/16 :goto_159

    .line 456
    .end local v31    # "name":Ljava/lang/String;
    :cond_259
    new-instance v13, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-direct {v13, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    .line 457
    .local v13, "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    const/16 v43, 0x0

    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    const-string v43, "Save"

    const v44, 0x7f0704ae

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v13, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 459
    const-string v43, "dialogTextBlue2"

    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    invoke-virtual {v13, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 460
    new-instance v43, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/TelehgramSettingsActivity$4$2;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity$4;[ZLandroid/content/SharedPreferences;)V

    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    const/16 v43, -0x1

    const/16 v44, 0x30

    invoke-static/range {v43 .. v44}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v43

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-virtual {v0, v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lorg/telegram/ui/TelehgramSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_57

    .line 527
    .end local v6    # "a":I
    .end local v11    # "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .end local v13    # "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    .end local v25    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v28    # "maskValues":[Z
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    :cond_2cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->defaultTabRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1200(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_4a5

    .line 528
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-direct {v12, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 529
    .local v12, "builder2":Landroid/app/AlertDialog$Builder;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v24, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 531
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    const-string v43, "AllTab"

    const v44, 0x7f070643

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity;->options:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    const-string v43, "hideFavs"

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    if-nez v43, :cond_359

    .line 534
    const-string v43, "FavoriteTab"

    const v44, 0x7f0706f9

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity;->options:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    const/16 v44, 0x8

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_359
    const-string v43, "hideUsers"

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    if-nez v43, :cond_38e

    .line 538
    const-string v43, "ContactTab"

    const v44, 0x7f070692

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity;->options:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    const/16 v44, 0x6

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_38e
    const-string v43, "hideGroups"

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    if-nez v43, :cond_3c3

    .line 542
    const-string v43, "GroupsTab"

    const v44, 0x7f07071f

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity;->options:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    const/16 v44, 0x4

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_3c3
    const-string v43, "hideSGroups"

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    if-nez v43, :cond_3f8

    .line 546
    const-string v43, "SGroupsTab"

    const v44, 0x7f0707a5

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity;->options:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    const/16 v44, 0x7

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_3f8
    const-string v43, "hideChannels"

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    if-nez v43, :cond_42d

    .line 550
    const-string v43, "ChannelTab"

    const v44, 0x7f070674

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity;->options:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    const/16 v44, 0x3

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_42d
    const-string v43, "hideBots"

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    if-nez v43, :cond_462

    .line 554
    const-string v43, "RobotTab"

    const v44, 0x7f07079a

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity;->options:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    const/16 v44, 0x5

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_462
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v43, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    .line 559
    .local v9, "arrayOfCharSequence":[Ljava/lang/CharSequence;
    new-instance v26, Lorg/telegram/ui/TelehgramSettingsActivity$4$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/TelehgramSettingsActivity$4$3;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity$4;)V

    .line 570
    .local v26, "local3":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, v26

    invoke-virtual {v12, v9, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 571
    const-string v43, "DefaultTab"

    const v44, 0x7f0706a4

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 572
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v27

    .line 573
    .local v27, "localAlertDialog":Landroid/app/AlertDialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/telegram/ui/TelehgramSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_57

    .line 615
    .end local v9    # "arrayOfCharSequence":[Ljava/lang/CharSequence;
    .end local v12    # "builder2":Landroid/app/AlertDialog$Builder;
    .end local v24    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v26    # "local3":Landroid/content/DialogInterface$OnClickListener;
    .end local v27    # "localAlertDialog":Landroid/app/AlertDialog;
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    :cond_4a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->fontRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1300(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_4c5

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    new-instance v44, Lorg/telegram/ui/Telehgram/FontSelectActivity;

    invoke-direct/range {v44 .. v44}, Lorg/telegram/ui/Telehgram/FontSelectActivity;-><init>()V

    invoke-virtual/range {v43 .. v44}, Lorg/telegram/ui/TelehgramSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_57

    .line 618
    :cond_4c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->answermachineTime:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1400(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_5ae

    .line 619
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 620
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->val$context:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-direct {v11, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 621
    .local v11, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Answeringmachinetime"

    const v45, 0x7f070649

    invoke-static/range {v44 .. v45}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\n\n"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 622
    new-instance v36, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 623
    .local v36, "picker":Landroid/widget/NumberPicker;
    const/16 v43, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 624
    const/16 v43, 0x1388

    move-object/from16 v0, v36

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 625
    new-instance v33, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 626
    .local v33, "parent":Landroid/widget/FrameLayout;
    new-instance v43, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v44, -0x2

    const/16 v45, -0x2

    const/16 v46, 0x11

    invoke-direct/range {v43 .. v46}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    const-string v43, "answeringmachinetime"

    const/16 v44, 0x5

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v43

    move-object/from16 v0, v36

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 631
    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 632
    const-string v43, "Ok"

    const v44, 0x7f0703d4

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    new-instance v44, Lorg/telegram/ui/TelehgramSettingsActivity$4$4;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    move-object/from16 v2, v37

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/TelehgramSettingsActivity$4$4;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity$4;Landroid/content/SharedPreferences;Landroid/widget/NumberPicker;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v11, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 640
    const-string v43, "Cancel"

    const v44, 0x7f0700fe

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    new-instance v44, Lorg/telegram/ui/TelehgramSettingsActivity$4$5;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/TelehgramSettingsActivity$4$5;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity$4;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v11, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 645
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_57

    .line 647
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v33    # "parent":Landroid/widget/FrameLayout;
    .end local v36    # "picker":Landroid/widget/NumberPicker;
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    :cond_5ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->answermachinetext:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_695

    .line 648
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 649
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->val$context:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-direct {v11, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 650
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Answeringmachinetext"

    const v45, 0x7f070648

    invoke-static/range {v44 .. v45}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, "\n\n"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 651
    new-instance v21, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->val$context:Landroid/content/Context;

    move-object/from16 v43, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 652
    .local v21, "input":Landroid/widget/EditText;
    const-string v43, "answeringmachineanswer"

    const-string v44, "Answeringmachinetext"

    const v45, 0x7f070647

    invoke-static/range {v44 .. v45}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v21

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 653
    new-instance v32, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v43, -0x2

    const/16 v44, -0x1

    move-object/from16 v0, v32

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 654
    .local v32, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v43, 0x0

    const/16 v44, 0x14

    const/16 v45, 0x0

    const/16 v46, 0x14

    move-object/from16 v0, v32

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    move/from16 v4, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 655
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    const/16 v43, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 657
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 658
    const-string v43, "Ok"

    const v44, 0x7f0703d4

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    new-instance v44, Lorg/telegram/ui/TelehgramSettingsActivity$4$6;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    move-object/from16 v2, v37

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/TelehgramSettingsActivity$4$6;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity$4;Landroid/content/SharedPreferences;Landroid/widget/EditText;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v11, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 665
    const-string v43, "Cancel"

    const v44, 0x7f0700fe

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    new-instance v44, Lorg/telegram/ui/TelehgramSettingsActivity$4$7;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/TelehgramSettingsActivity$4$7;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity$4;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v11, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 670
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_57

    .line 679
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v21    # "input":Landroid/widget/EditText;
    .end local v32    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    :cond_695
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->directForwardRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1600(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_84d

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    if-eqz v43, :cond_57

    .line 681
    const/16 v43, 0x6

    move/from16 v0, v43

    new-array v0, v0, [Z

    move-object/from16 v28, v0

    .line 682
    .restart local v28    # "maskValues":[Z
    new-instance v11, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-direct {v11, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 683
    .local v11, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/16 v43, 0x0

    move/from16 v0, v43

    invoke-virtual {v11, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 684
    new-instance v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 685
    .restart local v25    # "linearLayout":Landroid/widget/LinearLayout;
    const/16 v43, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 686
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 687
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    const/4 v6, 0x0

    .restart local v6    # "a":I
    :goto_6f8
    const/16 v43, 0x4

    move/from16 v0, v43

    if-ge v6, v0, :cond_7d9

    .line 688
    const/16 v31, 0x0

    .line 689
    .restart local v31    # "name":Ljava/lang/String;
    if-nez v6, :cond_777

    .line 690
    const-string v43, "ContactTab"

    const v44, 0x7f070692

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    .line 691
    const-string v43, "direct_contact"

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    aput-boolean v43, v28, v6

    .line 702
    :cond_71b
    :goto_71b
    new-instance v14, Lorg/telegram/ui/Cells/CheckBoxCell;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-direct {v14, v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    .line 703
    .restart local v14    # "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTag(Ljava/lang/Object;)V

    .line 704
    const/16 v43, 0x0

    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 705
    const/16 v43, -0x1

    const/16 v44, 0x30

    invoke-static/range {v43 .. v44}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v43

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-virtual {v0, v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    const-string v43, ""

    aget-boolean v44, v28, v6

    const/16 v45, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-virtual {v14, v0, v1, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 707
    new-instance v43, Lorg/telegram/ui/TelehgramSettingsActivity$4$8;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/TelehgramSettingsActivity$4$8;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity$4;[Z)V

    move-object/from16 v0, v43

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    add-int/lit8 v6, v6, 0x1

    goto :goto_6f8

    .line 692
    .end local v14    # "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    :cond_777
    const/16 v43, 0x1

    move/from16 v0, v43

    if-ne v6, v0, :cond_797

    .line 693
    const-string v43, "GroupsTab"

    const v44, 0x7f07071f

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    .line 694
    const-string v43, "direct_group"

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    aput-boolean v43, v28, v6

    goto :goto_71b

    .line 695
    :cond_797
    const/16 v43, 0x2

    move/from16 v0, v43

    if-ne v6, v0, :cond_7b8

    .line 696
    const-string v43, "ChannelTab"

    const v44, 0x7f070674

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    .line 697
    const-string v43, "direct_channel"

    const/16 v44, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    aput-boolean v43, v28, v6

    goto/16 :goto_71b

    .line 698
    :cond_7b8
    const/16 v43, 0x3

    move/from16 v0, v43

    if-ne v6, v0, :cond_71b

    .line 699
    const-string v43, "RobotTab"

    const v44, 0x7f07079a

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    .line 700
    const-string v43, "direct_bot"

    const/16 v44, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    aput-boolean v43, v28, v6

    goto/16 :goto_71b

    .line 717
    .end local v31    # "name":Ljava/lang/String;
    :cond_7d9
    new-instance v13, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    const/16 v44, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-direct {v13, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    .line 718
    .restart local v13    # "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    const/16 v43, 0x0

    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 719
    const-string v43, "Save"

    const v44, 0x7f0704ae

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v13, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 720
    const-string v43, "dialogTextBlue2"

    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v43

    move/from16 v0, v43

    invoke-virtual {v13, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 721
    new-instance v43, Lorg/telegram/ui/TelehgramSettingsActivity$4$9;

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/TelehgramSettingsActivity$4$9;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity$4;[Z)V

    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    const/16 v43, -0x1

    const/16 v44, 0x30

    invoke-static/range {v43 .. v44}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v43

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-virtual {v0, v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 753
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lorg/telegram/ui/TelehgramSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_57

    .line 759
    .end local v6    # "a":I
    .end local v11    # "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    .end local v13    # "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    .end local v25    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v28    # "maskValues":[Z
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    :cond_84d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->previewStickerRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$1900(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_8ac

    .line 760
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v43

    const-string v44, "preview_sticker"

    const/16 v45, 0x0

    invoke-interface/range {v43 .. v45}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    .line 761
    .local v38, "previewSticker":Z
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 762
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v44, "preview_sticker"

    if-nez v38, :cond_8a6

    const/16 v43, 0x1

    :goto_883
    move-object/from16 v0, v17

    move-object/from16 v1, v44

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 763
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 764
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_57

    .line 765
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v38, :cond_8a9

    const/16 v43, 0x1

    :goto_89d
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_57

    .line 762
    .restart local p1    # "view":Landroid/view/View;
    :cond_8a6
    const/16 v43, 0x0

    goto :goto_883

    .line 765
    .end local p1    # "view":Landroid/view/View;
    :cond_8a9
    const/16 v43, 0x0

    goto :goto_89d

    .line 769
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v38    # "previewSticker":Z
    .restart local p1    # "view":Landroid/view/View;
    :cond_8ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->confirmatinAudioRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2000(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_907

    .line 770
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 771
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    const-string v43, "confirmatin_audio"

    const/16 v44, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 772
    .local v15, "confirmatinAudio":Z
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 773
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v44, "confirmatin_audio"

    if-nez v15, :cond_901

    const/16 v43, 0x1

    :goto_8de
    move-object/from16 v0, v17

    move-object/from16 v1, v44

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 774
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 775
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_57

    .line 776
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v15, :cond_904

    const/16 v43, 0x1

    :goto_8f8
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_57

    .line 773
    .restart local p1    # "view":Landroid/view/View;
    :cond_901
    const/16 v43, 0x0

    goto :goto_8de

    .line 776
    .end local p1    # "view":Landroid/view/View;
    :cond_904
    const/16 v43, 0x0

    goto :goto_8f8

    .line 780
    .end local v15    # "confirmatinAudio":Z
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_907
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->typingStatusRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2100(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_966

    .line 781
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v43

    const-string v44, "hide_typing"

    const/16 v45, 0x0

    invoke-interface/range {v43 .. v45}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 782
    .local v20, "hideTyping":Z
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 783
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v44, "hide_typing"

    if-nez v20, :cond_960

    const/16 v43, 0x1

    :goto_93d
    move-object/from16 v0, v17

    move-object/from16 v1, v44

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 784
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 785
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_57

    .line 786
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v20, :cond_963

    const/16 v43, 0x1

    :goto_957
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_57

    .line 783
    .restart local p1    # "view":Landroid/view/View;
    :cond_960
    const/16 v43, 0x0

    goto :goto_93d

    .line 786
    .end local p1    # "view":Landroid/view/View;
    :cond_963
    const/16 v43, 0x0

    goto :goto_957

    .line 790
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v20    # "hideTyping":Z
    .restart local p1    # "view":Landroid/view/View;
    :cond_966
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->showMutualRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2200(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_9c1

    .line 791
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 792
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    const-string v43, "mutual_contact"

    const/16 v44, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 793
    .local v30, "mutualContact":Z
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 794
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v44, "mutual_contact"

    if-nez v30, :cond_9bb

    const/16 v43, 0x1

    :goto_998
    move-object/from16 v0, v17

    move-object/from16 v1, v44

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 795
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 796
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_57

    .line 797
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v30, :cond_9be

    const/16 v43, 0x1

    :goto_9b2
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_57

    .line 794
    .restart local p1    # "view":Landroid/view/View;
    :cond_9bb
    const/16 v43, 0x0

    goto :goto_998

    .line 797
    .end local p1    # "view":Landroid/view/View;
    :cond_9be
    const/16 v43, 0x0

    goto :goto_9b2

    .line 801
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v30    # "mutualContact":Z
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_9c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->ghostModeRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2300(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_a32

    .line 802
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 803
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    const-string v43, "ghost_mode"

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 804
    .local v18, "ghostMode":Z
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 805
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v44, "ghost_mode"

    if-nez v18, :cond_a2c

    const/16 v43, 0x1

    :goto_9f3
    move-object/from16 v0, v17

    move-object/from16 v1, v44

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 806
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 807
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_a21

    .line 808
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v18, :cond_a2f

    const/16 v43, 0x1

    :goto_a0d
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 809
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "\u062d\u0627\u0644\u062a \u0631\u0648\u062d \u062a\u063a\u06cc\u06cc\u0631 \u06a9\u0631\u062f"

    const/16 v45, 0x1

    invoke-static/range {v43 .. v45}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/widget/Toast;->show()V

    .line 811
    :cond_a21
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # invokes: Lorg/telegram/ui/TelehgramSettingsActivity;->restartApp()V
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$700(Lorg/telegram/ui/TelehgramSettingsActivity;)V

    goto/16 :goto_57

    .line 805
    .restart local p1    # "view":Landroid/view/View;
    :cond_a2c
    const/16 v43, 0x0

    goto :goto_9f3

    .line 808
    .end local p1    # "view":Landroid/view/View;
    :cond_a2f
    const/16 v43, 0x0

    goto :goto_a0d

    .line 813
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v18    # "ghostMode":Z
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_a32
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->hidePhoneRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2400(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_aa7

    .line 814
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 815
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    const-string v43, "hide_phone"

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 816
    .local v19, "hidePhone":Z
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 817
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v44, "hide_phone"

    if-nez v19, :cond_a96

    const/16 v43, 0x1

    :goto_a64
    move-object/from16 v0, v17

    move-object/from16 v1, v44

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 818
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 819
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_a85

    .line 820
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v19, :cond_a99

    const/16 v43, 0x1

    :goto_a7e
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 822
    :cond_a85
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v43

    if-eqz v43, :cond_a9c

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # invokes: Lorg/telegram/ui/TelehgramSettingsActivity;->reLunchApp()V
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$600(Lorg/telegram/ui/TelehgramSettingsActivity;)V

    goto/16 :goto_57

    .line 817
    .restart local p1    # "view":Landroid/view/View;
    :cond_a96
    const/16 v43, 0x0

    goto :goto_a64

    .line 820
    .end local p1    # "view":Landroid/view/View;
    :cond_a99
    const/16 v43, 0x0

    goto :goto_a7e

    .line 826
    :cond_a9c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # invokes: Lorg/telegram/ui/TelehgramSettingsActivity;->restartApp()V
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$700(Lorg/telegram/ui/TelehgramSettingsActivity;)V

    goto/16 :goto_57

    .line 829
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v19    # "hidePhone":Z
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_aa7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->showGhostModeRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_b1c

    .line 830
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 831
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    const-string v43, "show_ghost_state_icon"

    const/16 v44, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 832
    .restart local v19    # "hidePhone":Z
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 833
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v44, "show_ghost_state_icon"

    if-nez v19, :cond_b0b

    const/16 v43, 0x1

    :goto_ad9
    move-object/from16 v0, v17

    move-object/from16 v1, v44

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 834
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 835
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_afa

    .line 836
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v19, :cond_b0e

    const/16 v43, 0x1

    :goto_af3
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 838
    :cond_afa
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v43

    if-eqz v43, :cond_b11

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # invokes: Lorg/telegram/ui/TelehgramSettingsActivity;->reLunchApp()V
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$600(Lorg/telegram/ui/TelehgramSettingsActivity;)V

    goto/16 :goto_57

    .line 833
    .restart local p1    # "view":Landroid/view/View;
    :cond_b0b
    const/16 v43, 0x0

    goto :goto_ad9

    .line 836
    .end local p1    # "view":Landroid/view/View;
    :cond_b0e
    const/16 v43, 0x0

    goto :goto_af3

    .line 842
    :cond_b11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # invokes: Lorg/telegram/ui/TelehgramSettingsActivity;->restartApp()V
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$700(Lorg/telegram/ui/TelehgramSettingsActivity;)V

    goto/16 :goto_57

    .line 845
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v19    # "hidePhone":Z
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_b1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->showExactCountRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2600(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_b8f

    .line 846
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 847
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    const-string v43, "exact_count"

    const/16 v44, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    .line 848
    .local v39, "showExactCount":Z
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 849
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v39, :cond_b71

    .line 850
    const-string v43, "exact_count"

    const/16 v44, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 851
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 857
    :goto_b5a
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_57

    .line 858
    if-nez v39, :cond_b82

    .line 859
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    const/16 v43, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_57

    .line 853
    .restart local p1    # "view":Landroid/view/View;
    :cond_b71
    const-string v43, "exact_count"

    const/16 v44, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 854
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_b5a

    .line 862
    :cond_b82
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    const/16 v43, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_57

    .line 865
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    .end local v39    # "showExactCount":Z
    .restart local p1    # "view":Landroid/view/View;
    :cond_b8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->enableRTLRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2700(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_c77

    .line 866
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 867
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    const-string v43, "is_rtl"

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 868
    .local v23, "isRTL":Z
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 869
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v23, :cond_c58

    .line 870
    const-string v43, "is_rtl"

    const/16 v44, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 871
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 877
    :goto_bcd
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_be2

    .line 878
    if-nez v23, :cond_c6a

    .line 879
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    const/16 v43, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 885
    :cond_be2
    :goto_be2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v16

    .line 886
    .local v16, "context":Landroid/content/Context;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v43

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    .line 887
    .local v22, "intent":Landroid/content/Intent;
    const/high16 v43, 0x4000000

    move-object/from16 v0, v22

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 888
    const/high16 v43, 0x10000000

    move-object/from16 v0, v22

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 889
    sget v43, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v44, 0xb

    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_c22

    .line 890
    const v43, 0x8000

    move-object/from16 v0, v22

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 891
    :cond_c22
    const/16 v43, 0x0

    const/high16 v44, 0x10000000

    move-object/from16 v0, v16

    move/from16 v1, v43

    move-object/from16 v2, v22

    move/from16 v3, v44

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v34

    .line 892
    .local v34, "pendingIntent":Landroid/app/PendingIntent;
    const-string v43, "alarm"

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 893
    .local v7, "alarmManager":Landroid/app/AlarmManager;
    const/16 v43, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    const-wide/16 v46, 0x1

    add-long v44, v44, v46

    move/from16 v0, v43

    move-wide/from16 v1, v44

    move-object/from16 v3, v34

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 894
    const/16 v43, 0x2

    invoke-static/range {v43 .. v43}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_57

    .line 873
    .end local v7    # "alarmManager":Landroid/app/AlarmManager;
    .end local v16    # "context":Landroid/content/Context;
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v34    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local p1    # "view":Landroid/view/View;
    :cond_c58
    const-string v43, "is_rtl"

    const/16 v44, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 874
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_bcd

    .line 882
    :cond_c6a
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    const/16 v43, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_be2

    .line 895
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "isRTL":Z
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_c77
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->copySenderName:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2800(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_cea

    .line 896
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 897
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    const-string v43, "copySender"

    const/16 v44, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 898
    .restart local v23    # "isRTL":Z
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 899
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v23, :cond_ccc

    .line 900
    const-string v43, "copySender"

    const/16 v44, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 901
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 907
    :goto_cb5
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_57

    .line 908
    if-nez v23, :cond_cdd

    .line 909
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    const/16 v43, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_57

    .line 903
    .restart local p1    # "view":Landroid/view/View;
    :cond_ccc
    const-string v43, "copySender"

    const/16 v44, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 904
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_cb5

    .line 912
    :cond_cdd
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    const/16 v43, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_57

    .line 915
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "isRTL":Z
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_cea
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->paintingIcon:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$2900(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_d5d

    .line 916
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 917
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    const-string v43, "painting_icon"

    const/16 v44, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 918
    .restart local v23    # "isRTL":Z
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 919
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v23, :cond_d3f

    .line 920
    const-string v43, "painting_icon"

    const/16 v44, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 921
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 927
    :goto_d28
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_57

    .line 928
    if-nez v23, :cond_d50

    .line 929
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    const/16 v43, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_57

    .line 923
    .restart local p1    # "view":Landroid/view/View;
    :cond_d3f
    const-string v43, "painting_icon"

    const/16 v44, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 924
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_d28

    .line 932
    :cond_d50
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    const/16 v43, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_57

    .line 935
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "isRTL":Z
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_d5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatPassCodeRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3000(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_d7f

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    new-instance v44, Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    const/16 v45, 0x0

    invoke-direct/range {v44 .. v45}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;-><init>(I)V

    invoke-virtual/range {v43 .. v44}, Lorg/telegram/ui/TelehgramSettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_57

    .line 938
    :cond_d7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->enableAnweringMachin:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3100(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_df2

    .line 939
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 940
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    const-string v43, "answeringmachine"

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    .line 941
    .restart local v39    # "showExactCount":Z
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 942
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v39, :cond_dd4

    .line 943
    const-string v43, "answeringmachine"

    const/16 v44, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 944
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 950
    :goto_dbd
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_57

    .line 951
    if-nez v39, :cond_de5

    .line 952
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    const/16 v43, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_57

    .line 946
    .restart local p1    # "view":Landroid/view/View;
    :cond_dd4
    const-string v43, "answeringmachine"

    const/16 v44, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 947
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_dbd

    .line 955
    :cond_de5
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    const/16 v43, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_57

    .line 959
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    .end local v39    # "showExactCount":Z
    .restart local p1    # "view":Landroid/view/View;
    :cond_df2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->moveTabsToBottom:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3200(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_eda

    .line 960
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 961
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    const-string v43, "tabsToBottom"

    const/16 v44, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    .line 962
    .local v42, "tabsToBottom":Z
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 963
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v42, :cond_ebb

    .line 964
    const-string v43, "tabsToBottom"

    const/16 v44, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 965
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 971
    :goto_e30
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_e45

    .line 972
    if-nez v42, :cond_ecd

    .line 973
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    const/16 v43, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 979
    :cond_e45
    :goto_e45
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v16

    .line 980
    .restart local v16    # "context":Landroid/content/Context;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v43

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    .line 981
    .restart local v22    # "intent":Landroid/content/Intent;
    const/high16 v43, 0x4000000

    move-object/from16 v0, v22

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 982
    const/high16 v43, 0x10000000

    move-object/from16 v0, v22

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 983
    sget v43, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v44, 0xb

    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_e85

    .line 984
    const v43, 0x8000

    move-object/from16 v0, v22

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 985
    :cond_e85
    const/16 v43, 0x0

    const/high16 v44, 0x10000000

    move-object/from16 v0, v16

    move/from16 v1, v43

    move-object/from16 v2, v22

    move/from16 v3, v44

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v34

    .line 986
    .restart local v34    # "pendingIntent":Landroid/app/PendingIntent;
    const-string v43, "alarm"

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 987
    .restart local v7    # "alarmManager":Landroid/app/AlarmManager;
    const/16 v43, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    const-wide/16 v46, 0x1

    add-long v44, v44, v46

    move/from16 v0, v43

    move-wide/from16 v1, v44

    move-object/from16 v3, v34

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 988
    const/16 v43, 0x2

    invoke-static/range {v43 .. v43}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_57

    .line 967
    .end local v7    # "alarmManager":Landroid/app/AlarmManager;
    .end local v16    # "context":Landroid/content/Context;
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v34    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local p1    # "view":Landroid/view/View;
    :cond_ebb
    const-string v43, "tabsToBottom"

    const/16 v44, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 968
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_e30

    .line 976
    :cond_ecd
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    const/16 v43, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_e45

    .line 989
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    .end local v42    # "tabsToBottom":Z
    .restart local p1    # "view":Landroid/view/View;
    :cond_eda
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->enableTabletMode:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3300(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_f4f

    .line 990
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 991
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    const-string v43, "tablet_mode"

    const/16 v44, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 992
    .local v8, "animations":Z
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 993
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v44, "tablet_mode"

    if-nez v8, :cond_f3e

    const/16 v43, 0x1

    :goto_f0c
    move-object/from16 v0, v17

    move-object/from16 v1, v44

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 994
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 995
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_f2d

    .line 996
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v8, :cond_f41

    const/16 v43, 0x1

    :goto_f26
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 998
    :cond_f2d
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v43

    if-eqz v43, :cond_f44

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # invokes: Lorg/telegram/ui/TelehgramSettingsActivity;->reLunchApp()V
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$600(Lorg/telegram/ui/TelehgramSettingsActivity;)V

    goto/16 :goto_57

    .line 993
    .restart local p1    # "view":Landroid/view/View;
    :cond_f3e
    const/16 v43, 0x0

    goto :goto_f0c

    .line 996
    .end local p1    # "view":Landroid/view/View;
    :cond_f41
    const/16 v43, 0x0

    goto :goto_f26

    .line 1002
    :cond_f44
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # invokes: Lorg/telegram/ui/TelehgramSettingsActivity;->restartApp()V
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$700(Lorg/telegram/ui/TelehgramSettingsActivity;)V

    goto/16 :goto_57

    .line 1006
    .end local v8    # "animations":Z
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_f4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatShowQuickBarRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3400(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_fa7

    .line 1007
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 1008
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->plusShowQuickBar:Z

    .line 1009
    .local v10, "bol":Z
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 1010
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v44, "showQuickBar"

    if-nez v10, :cond_f9e

    const/16 v43, 0x1

    :goto_f75
    move-object/from16 v0, v17

    move-object/from16 v1, v44

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1011
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1012
    if-nez v10, :cond_fa1

    const/16 v43, 0x1

    :goto_f85
    sput-boolean v43, Lorg/telegram/ui/ActionBar/Theme;->plusShowQuickBar:Z

    .line 1013
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_57

    .line 1014
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v10, :cond_fa4

    const/16 v43, 0x1

    :goto_f95
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_57

    .line 1010
    .restart local p1    # "view":Landroid/view/View;
    :cond_f9e
    const/16 v43, 0x0

    goto :goto_f75

    .line 1012
    :cond_fa1
    const/16 v43, 0x0

    goto :goto_f85

    .line 1014
    .end local p1    # "view":Landroid/view/View;
    :cond_fa4
    const/16 v43, 0x0

    goto :goto_f95

    .line 1020
    .end local v10    # "bol":Z
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_fa7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatVerticalQuickBarRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_fff

    .line 1021
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 1022
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    .line 1023
    .restart local v10    # "bol":Z
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 1024
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v44, "verticalQuickBar"

    if-nez v10, :cond_ff6

    const/16 v43, 0x1

    :goto_fcd
    move-object/from16 v0, v17

    move-object/from16 v1, v44

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1025
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1026
    if-nez v10, :cond_ff9

    const/16 v43, 0x1

    :goto_fdd
    sput-boolean v43, Lorg/telegram/ui/ActionBar/Theme;->plusVerticalQuickBar:Z

    .line 1027
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_57

    .line 1028
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v10, :cond_ffc

    const/16 v43, 0x1

    :goto_fed
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_57

    .line 1024
    .restart local p1    # "view":Landroid/view/View;
    :cond_ff6
    const/16 v43, 0x0

    goto :goto_fcd

    .line 1026
    :cond_ff9
    const/16 v43, 0x0

    goto :goto_fdd

    .line 1028
    .end local p1    # "view":Landroid/view/View;
    :cond_ffc
    const/16 v43, 0x0

    goto :goto_fed

    .line 1030
    .end local v10    # "bol":Z
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_fff
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatDoNotCloseQuickBarRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3600(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_1057

    .line 1031
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 1032
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotCloseQuickBar:Z

    .line 1033
    .restart local v10    # "bol":Z
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 1034
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v44, "doNotCloseQuickBar"

    if-nez v10, :cond_104e

    const/16 v43, 0x1

    :goto_1025
    move-object/from16 v0, v17

    move-object/from16 v1, v44

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1035
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1036
    if-nez v10, :cond_1051

    const/16 v43, 0x1

    :goto_1035
    sput-boolean v43, Lorg/telegram/ui/ActionBar/Theme;->plusDoNotCloseQuickBar:Z

    .line 1037
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_57

    .line 1038
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v10, :cond_1054

    const/16 v43, 0x1

    :goto_1045
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_57

    .line 1034
    .restart local p1    # "view":Landroid/view/View;
    :cond_104e
    const/16 v43, 0x0

    goto :goto_1025

    .line 1036
    :cond_1051
    const/16 v43, 0x0

    goto :goto_1035

    .line 1038
    .end local p1    # "view":Landroid/view/View;
    :cond_1054
    const/16 v43, 0x0

    goto :goto_1045

    .line 1040
    .end local v10    # "bol":Z
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatHideQuickBarOnScrollRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3700(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_10af

    .line 1041
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 1042
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->plusHideQuickBarOnScroll:Z

    .line 1043
    .restart local v10    # "bol":Z
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 1044
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v44, "hideQuickBarOnScroll"

    if-nez v10, :cond_10a6

    const/16 v43, 0x1

    :goto_107d
    move-object/from16 v0, v17

    move-object/from16 v1, v44

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1045
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1046
    if-nez v10, :cond_10a9

    const/16 v43, 0x1

    :goto_108d
    sput-boolean v43, Lorg/telegram/ui/ActionBar/Theme;->plusHideQuickBarOnScroll:Z

    .line 1047
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_57

    .line 1048
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v10, :cond_10ac

    const/16 v43, 0x1

    :goto_109d
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_57

    .line 1044
    .restart local p1    # "view":Landroid/view/View;
    :cond_10a6
    const/16 v43, 0x0

    goto :goto_107d

    .line 1046
    :cond_10a9
    const/16 v43, 0x0

    goto :goto_108d

    .line 1048
    .end local p1    # "view":Landroid/view/View;
    :cond_10ac
    const/16 v43, 0x0

    goto :goto_109d

    .line 1050
    .end local v10    # "bol":Z
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_10af
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->chatCenterQuickBarBtnRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3800(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_1107

    .line 1051
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 1052
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    sget-boolean v10, Lorg/telegram/ui/ActionBar/Theme;->plusCenterQuickBarBtn:Z

    .line 1053
    .restart local v10    # "bol":Z
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 1054
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v44, "centerQuickBarBtn"

    if-nez v10, :cond_10fe

    const/16 v43, 0x1

    :goto_10d5
    move-object/from16 v0, v17

    move-object/from16 v1, v44

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1055
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1056
    if-nez v10, :cond_1101

    const/16 v43, 0x1

    :goto_10e5
    sput-boolean v43, Lorg/telegram/ui/ActionBar/Theme;->plusCenterQuickBarBtn:Z

    .line 1057
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_57

    .line 1058
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v10, :cond_1104

    const/16 v43, 0x1

    :goto_10f5
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_57

    .line 1054
    .restart local p1    # "view":Landroid/view/View;
    :cond_10fe
    const/16 v43, 0x0

    goto :goto_10d5

    .line 1056
    :cond_1101
    const/16 v43, 0x0

    goto :goto_10e5

    .line 1058
    .end local p1    # "view":Landroid/view/View;
    :cond_1104
    const/16 v43, 0x0

    goto :goto_10f5

    .line 1060
    .end local v10    # "bol":Z
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->enable24HourFormat:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$3900(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_11ed

    .line 1061
    sget-object v43, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v44, "mainconfig"

    const/16 v45, 0x0

    invoke-virtual/range {v43 .. v45}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 1062
    .restart local v37    # "preferences":Landroid/content/SharedPreferences;
    const-string v43, "enable24HourFormat"

    const/16 v44, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    .line 1063
    .local v40, "status":Z
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 1064
    .restart local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v44, "enable24HourFormat"

    if-nez v40, :cond_11e5

    const/16 v43, 0x1

    :goto_1139
    move-object/from16 v0, v17

    move-object/from16 v1, v44

    move/from16 v2, v43

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1065
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1066
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_116f

    .line 1067
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v40, :cond_11e9

    const/16 v43, 0x1

    :goto_1153
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    const-string v44, "\u0628\u0631\u0627\u06cc \u0627\u0639\u0645\u0627\u0644\u060c \u06cc\u06a9\u0628\u0627\u0631 \u0628\u0631\u0646\u0627\u0645\u0647 \u0631\u0627 \u0628\u0647 \u0637\u0648\u0631 \u06a9\u0627\u0645\u0644 \u0628\u0628\u0646\u062f\u06cc\u062f \u0648 \u062f\u0648\u0628\u0627\u0631\u0647 \u0628\u0627\u0632 \u06a9\u0646\u06cc\u062f."

    const/16 v45, 0x1

    invoke-static/range {v43 .. v45}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/widget/Toast;->show()V

    .line 1070
    :cond_116f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v16

    .line 1071
    .restart local v16    # "context":Landroid/content/Context;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v43

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    .line 1072
    .restart local v22    # "intent":Landroid/content/Intent;
    const/high16 v43, 0x4000000

    move-object/from16 v0, v22

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1073
    const/high16 v43, 0x10000000

    move-object/from16 v0, v22

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1074
    sget v43, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v44, 0xb

    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_11af

    .line 1075
    const v43, 0x8000

    move-object/from16 v0, v22

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1076
    :cond_11af
    const/16 v43, 0x0

    const/high16 v44, 0x10000000

    move-object/from16 v0, v16

    move/from16 v1, v43

    move-object/from16 v2, v22

    move/from16 v3, v44

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v34

    .line 1077
    .restart local v34    # "pendingIntent":Landroid/app/PendingIntent;
    const-string v43, "alarm"

    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 1078
    .restart local v7    # "alarmManager":Landroid/app/AlarmManager;
    const/16 v43, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    const-wide/16 v46, 0x1

    add-long v44, v44, v46

    move/from16 v0, v43

    move-wide/from16 v1, v44

    move-object/from16 v3, v34

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1079
    const/16 v43, 0x2

    invoke-static/range {v43 .. v43}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_57

    .line 1064
    .end local v7    # "alarmManager":Landroid/app/AlarmManager;
    .end local v16    # "context":Landroid/content/Context;
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v34    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local p1    # "view":Landroid/view/View;
    :cond_11e5
    const/16 v43, 0x0

    goto/16 :goto_1139

    .line 1067
    .end local p1    # "view":Landroid/view/View;
    :cond_11e9
    const/16 v43, 0x0

    goto/16 :goto_1153

    .line 1080
    .end local v17    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v37    # "preferences":Landroid/content/SharedPreferences;
    .end local v40    # "status":Z
    .restart local p1    # "view":Landroid/view/View;
    :cond_11ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->askQuestionRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4000(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_12c6

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    if-eqz v43, :cond_57

    .line 1084
    new-instance v29, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1085
    .local v29, "message":Landroid/widget/TextView;
    const-string v43, "AskAQuestionInfo"

    const v44, 0x7f0700b8

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v43

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1086
    const/high16 v43, 0x41900000    # 18.0f

    move-object/from16 v0, v29

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1087
    const v43, -0xce9061

    move-object/from16 v0, v29

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 1088
    const/high16 v43, 0x41000000    # 8.0f

    invoke-static/range {v43 .. v43}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v43

    const/high16 v44, 0x40a00000    # 5.0f

    invoke-static/range {v44 .. v44}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v44

    const/high16 v45, 0x41000000    # 8.0f

    invoke-static/range {v45 .. v45}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v45

    const/high16 v46, 0x40c00000    # 6.0f

    invoke-static/range {v46 .. v46}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v46

    move-object/from16 v0, v29

    move/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v45

    move/from16 v4, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1089
    new-instance v43, Lorg/telegram/ui/TelehgramSettingsActivity$LinkMovementMethodMy;

    const/16 v44, 0x0

    invoke-direct/range {v43 .. v44}, Lorg/telegram/ui/TelehgramSettingsActivity$LinkMovementMethodMy;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity$1;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1091
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-direct {v11, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1092
    .local v11, "builder":Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1093
    const-string v43, "AskButton"

    const v44, 0x7f0700b9

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    new-instance v44, Lorg/telegram/ui/TelehgramSettingsActivity$4$10;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/TelehgramSettingsActivity$4$10;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity$4;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v11, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1099
    const-string v43, "Cancel"

    const v44, 0x7f0700fe

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v11, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lorg/telegram/ui/TelehgramSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_57

    .line 1101
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v29    # "message":Landroid/widget/TextView;
    :cond_12c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->sendLogsRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4200(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_12e1

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # invokes: Lorg/telegram/ui/TelehgramSettingsActivity;->sendLogs()V
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4300(Lorg/telegram/ui/TelehgramSettingsActivity;)V

    goto/16 :goto_57

    .line 1103
    :cond_12e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->directShareRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4400(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_1313

    .line 1104
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/messenger/MediaController;->toggleDirectShare()V

    .line 1105
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v43, v0

    if-eqz v43, :cond_57

    .line 1106
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/messenger/MediaController;->canDirectShare()Z

    move-result v43

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_57

    .line 1108
    .restart local p1    # "view":Landroid/view/View;
    :cond_1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->switchBackendButtonRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4500(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_1396

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    if-eqz v43, :cond_57

    .line 1112
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-direct {v11, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1113
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v43, "AreYouSure"

    const v44, 0x7f0700a2

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1114
    const-string v43, "AppName"

    const v44, 0x7f070092

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1115
    const-string v43, "OK"

    const v44, 0x7f0703d4

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    new-instance v44, Lorg/telegram/ui/TelehgramSettingsActivity$4$11;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/TelehgramSettingsActivity$4$11;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity$4;)V

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v11, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1121
    const-string v43, "Cancel"

    const v44, 0x7f0700fe

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v11, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lorg/telegram/ui/TelehgramSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_57

    .line 1123
    .end local v11    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->telegramFaqRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4600(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_13be

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    const-string v44, "TelegramFaqUrl"

    const v45, 0x7f070532

    invoke-static/range {v44 .. v45}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_57

    .line 1125
    :cond_13be
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->contactsReimportRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4700(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-eq v0, v1, :cond_57

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    # getter for: Lorg/telegram/ui/TelehgramSettingsActivity;->contactsSortRow:I
    invoke-static/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->access$4800(Lorg/telegram/ui/TelehgramSettingsActivity;)I

    move-result v43

    move/from16 v0, p2

    move/from16 v1, v43

    if-ne v0, v1, :cond_57

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    if-eqz v43, :cond_57

    .line 1131
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lorg/telegram/ui/TelehgramSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-direct {v11, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1132
    .restart local v11    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v43, "SortBy"

    const v44, 0x7f070518

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1133
    const/16 v43, 0x3

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "Default"

    const v46, 0x7f0701c5

    .line 1134
    invoke-static/range {v45 .. v46}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    const-string v45, "SortFirstName"

    const v46, 0x7f070519

    .line 1135
    invoke-static/range {v45 .. v46}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x2

    const-string v45, "SortLastName"

    const v46, 0x7f07051a

    .line 1136
    invoke-static/range {v45 .. v46}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    new-instance v44, Lorg/telegram/ui/TelehgramSettingsActivity$4$12;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/TelehgramSettingsActivity$4$12;-><init>(Lorg/telegram/ui/TelehgramSettingsActivity$4;)V

    .line 1133
    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v11, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1149
    const-string v43, "Cancel"

    const v44, 0x7f0700fe

    invoke-static/range {v43 .. v44}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v11, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/TelehgramSettingsActivity$4;->this$0:Lorg/telegram/ui/TelehgramSettingsActivity;

    move-object/from16 v43, v0

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lorg/telegram/ui/TelehgramSettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_57
.end method
