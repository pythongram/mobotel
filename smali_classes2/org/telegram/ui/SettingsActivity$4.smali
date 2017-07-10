.class Lorg/telegram/ui/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/SettingsActivity;

    .prologue
    .line 380
    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 30
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->textSizeRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_96

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    if-nez v23, :cond_1d

    .line 615
    .end local p1    # "view":Landroid/view/View;
    :cond_1c
    :goto_1c
    return-void

    .line 387
    .restart local p1    # "view":Landroid/view/View;
    :cond_1d
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 388
    .local v6, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v23, "TextSize"

    const v24, 0x7f070538

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 389
    new-instance v15, Lorg/telegram/ui/Components/NumberPicker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 390
    .local v15, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    const/16 v23, 0xc

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 391
    const/16 v23, 0x1e

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 392
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->fontSize:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 393
    invoke-virtual {v6, v15}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 394
    const-string v23, "Done"

    const v24, 0x7f0701e8

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lorg/telegram/ui/SettingsActivity$4$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v15, v2}, Lorg/telegram/ui/SettingsActivity$4$1;-><init>(Lorg/telegram/ui/SettingsActivity$4;Lorg/telegram/ui/Components/NumberPicker;I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_1c

    .line 408
    .end local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v15    # "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    :cond_96
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->enableAnimationsRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_ef

    .line 409
    sget-object v23, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v24, "mainconfig"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 410
    .local v16, "preferences":Landroid/content/SharedPreferences;
    const-string v23, "view_animations"

    const/16 v24, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 411
    .local v5, "animations":Z
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 412
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v24, "view_animations"

    if-nez v5, :cond_e9

    const/16 v23, 0x1

    :goto_c8
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 413
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 414
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v23, v0

    if-eqz v23, :cond_1c

    .line 415
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v5, :cond_ec

    const/16 v23, 0x1

    :goto_e0
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_1c

    .line 412
    .restart local p1    # "view":Landroid/view/View;
    :cond_e9
    const/16 v23, 0x0

    goto :goto_c8

    .line 415
    .end local p1    # "view":Landroid/view/View;
    :cond_ec
    const/16 v23, 0x0

    goto :goto_e0

    .line 417
    .end local v5    # "animations":Z
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v16    # "preferences":Landroid/content/SharedPreferences;
    .restart local p1    # "view":Landroid/view/View;
    :cond_ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->notificationRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_10f

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/ui/NotificationsSettingsActivity;-><init>()V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1c

    .line 419
    :cond_10f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->backgroundRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_12f

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/WallpapersActivity;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/ui/WallpapersActivity;-><init>()V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1c

    .line 421
    :cond_12f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->askQuestionRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_27c

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    if-eqz v23, :cond_1c

    .line 425
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 426
    .local v13, "message":Landroid/widget/TextView;
    new-instance v20, Landroid/text/SpannableString;

    const-string v23, "AskAQuestionInfo"

    const v24, 0x7f0700b8

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 427
    .local v20, "spanned":Landroid/text/Spannable;
    const/16 v23, 0x0

    invoke-interface/range {v20 .. v20}, Landroid/text/Spannable;->length()I

    move-result v24

    const-class v25, Landroid/text/style/URLSpan;

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/URLSpan;

    .line 428
    .local v21, "spans":[Landroid/text/style/URLSpan;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_189
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v4, v0, :cond_1c8

    .line 429
    aget-object v18, v21, v4

    .line 430
    .local v18, "span":Landroid/text/style/URLSpan;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    .line 431
    .local v22, "start":I
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 432
    .local v10, "end":I
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 433
    new-instance v19, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    invoke-virtual/range {v18 .. v18}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    .line 434
    .end local v18    # "span":Landroid/text/style/URLSpan;
    .local v19, "span":Landroid/text/style/URLSpan;
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-interface {v0, v1, v2, v10, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 428
    add-int/lit8 v4, v4, 0x1

    goto :goto_189

    .line 436
    .end local v10    # "end":I
    .end local v19    # "span":Landroid/text/style/URLSpan;
    .end local v22    # "start":I
    :cond_1c8
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    const/16 v23, 0x1

    const/high16 v24, 0x41800000    # 16.0f

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 438
    const-string v23, "dialogTextLink"

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 439
    const-string v23, "dialogLinkSelection"

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 440
    const/high16 v23, 0x41b80000    # 23.0f

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v23

    const/16 v24, 0x0

    const/high16 v25, 0x41b80000    # 23.0f

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 441
    new-instance v23, Lorg/telegram/ui/SettingsActivity$LinkMovementMethodMy;

    const/16 v24, 0x0

    invoke-direct/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity$LinkMovementMethodMy;-><init>(Lorg/telegram/ui/SettingsActivity$1;)V

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 442
    const-string v23, "dialogTextBlack"

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 444
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 445
    .restart local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v6, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 446
    const-string v23, "AskAQuestion"

    const v24, 0x7f0700b7

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 447
    const-string v23, "AskButton"

    const v24, 0x7f0700b9

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lorg/telegram/ui/SettingsActivity$4$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/SettingsActivity$4$2;-><init>(Lorg/telegram/ui/SettingsActivity$4;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 453
    const-string v23, "Cancel"

    const v24, 0x7f0700fe

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1c

    .line 455
    .end local v4    # "a":I
    .end local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v13    # "message":Landroid/widget/TextView;
    .end local v20    # "spanned":Landroid/text/Spannable;
    .end local v21    # "spans":[Landroid/text/style/URLSpan;
    :cond_27c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->sendLogsRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$1100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_297

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # invokes: Lorg/telegram/ui/SettingsActivity;->sendLogs()V
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$1200(Lorg/telegram/ui/SettingsActivity;)V

    goto/16 :goto_1c

    .line 457
    :cond_297
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->clearLogsRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$1300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_2ac

    .line 458
    invoke-static {}, Lorg/telegram/messenger/FileLog;->cleanupLogs()V

    goto/16 :goto_1c

    .line 459
    :cond_2ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->sendByEnterRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$1400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_305

    .line 460
    sget-object v23, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v24, "mainconfig"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 461
    .restart local v16    # "preferences":Landroid/content/SharedPreferences;
    const-string v23, "send_by_enter"

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 462
    .local v17, "send":Z
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 463
    .restart local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v24, "send_by_enter"

    if-nez v17, :cond_2ff

    const/16 v23, 0x1

    :goto_2de
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-interface {v9, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 464
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 465
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v23, v0

    if-eqz v23, :cond_1c

    .line 466
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    if-nez v17, :cond_302

    const/16 v23, 0x1

    :goto_2f6
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_1c

    .line 463
    .restart local p1    # "view":Landroid/view/View;
    :cond_2ff
    const/16 v23, 0x0

    goto :goto_2de

    .line 466
    .end local p1    # "view":Landroid/view/View;
    :cond_302
    const/16 v23, 0x0

    goto :goto_2f6

    .line 468
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v16    # "preferences":Landroid/content/SharedPreferences;
    .end local v17    # "send":Z
    .restart local p1    # "view":Landroid/view/View;
    :cond_305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->raiseToSpeakRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$1500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_337

    .line 469
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MediaController;->toogleRaiseToSpeak()V

    .line 470
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v23, v0

    if-eqz v23, :cond_1c

    .line 471
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MediaController;->canRaiseToSpeak()Z

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_1c

    .line 473
    .restart local p1    # "view":Landroid/view/View;
    :cond_337
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->autoplayGifsRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$1600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_369

    .line 474
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MediaController;->toggleAutoplayGifs()V

    .line 475
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v23, v0

    if-eqz v23, :cond_1c

    .line 476
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MediaController;->canAutoplayGifs()Z

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_1c

    .line 478
    .restart local p1    # "view":Landroid/view/View;
    :cond_369
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->saveToGalleryRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$1700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_39b

    .line 479
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MediaController;->toggleSaveToGallery()V

    .line 480
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v23, v0

    if-eqz v23, :cond_1c

    .line 481
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MediaController;->canSaveToGallery()Z

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_1c

    .line 483
    .restart local p1    # "view":Landroid/view/View;
    :cond_39b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->customTabsRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$1800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_3cd

    .line 484
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MediaController;->toggleCustomTabs()V

    .line 485
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v23, v0

    if-eqz v23, :cond_1c

    .line 486
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MediaController;->canCustomTabs()Z

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_1c

    .line 488
    .restart local p1    # "view":Landroid/view/View;
    :cond_3cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->directShareRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$1900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_3ff

    .line 489
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MediaController;->toggleDirectShare()V

    .line 490
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/telegram/ui/Cells/TextCheckCell;

    move/from16 v23, v0

    if-eqz v23, :cond_1c

    .line 491
    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/messenger/MediaController;->canDirectShare()Z

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_1c

    .line 493
    .restart local p1    # "view":Landroid/view/View;
    :cond_3ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->privacyRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$2000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_41f

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>()V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1c

    .line 495
    :cond_41f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->dataRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$2100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_43f

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/ui/DataSettingsActivity;-><init>()V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1c

    .line 497
    :cond_43f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->languageRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$2200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_45f

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/ui/LanguageSelectActivity;-><init>()V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1c

    .line 499
    :cond_45f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->themeRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$2300(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_47f

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/ThemeActivity;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/ui/ThemeActivity;-><init>()V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1c

    .line 501
    :cond_47f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->switchBackendButtonRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$2400(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_502

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    if-eqz v23, :cond_1c

    .line 505
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 506
    .restart local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v23, "AreYouSure"

    const v24, 0x7f0700a2

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 507
    const-string v23, "AppName"

    const v24, 0x7f070092

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 508
    const-string v23, "OK"

    const v24, 0x7f0703d4

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lorg/telegram/ui/SettingsActivity$4$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/ui/SettingsActivity$4$3;-><init>(Lorg/telegram/ui/SettingsActivity$4;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 514
    const-string v23, "Cancel"

    const v24, 0x7f0700fe

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1c

    .line 516
    .end local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_502
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->telegramFaqRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$2500(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_52a

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    const-string v24, "TelegramFaqUrl"

    const v25, 0x7f070532

    invoke-static/range {v24 .. v25}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 518
    :cond_52a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->privacyPolicyRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$2600(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_552

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    const-string v24, "PrivacyPolicyUrl"

    const v25, 0x7f07046e

    invoke-static/range {v24 .. v25}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 520
    :cond_552
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->contactsReimportRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$2700(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-eq v0, v1, :cond_1c

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->contactsSortRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$2800(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_5ff

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    if-eqz v23, :cond_1c

    .line 526
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 527
    .restart local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v23, "SortBy"

    const v24, 0x7f070518

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 528
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "Default"

    const v26, 0x7f0701c5

    .line 529
    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-string v25, "SortFirstName"

    const v26, 0x7f070519

    .line 530
    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    const-string v25, "SortLastName"

    const v26, 0x7f07051a

    .line 531
    invoke-static/range {v25 .. v26}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    new-instance v24, Lorg/telegram/ui/SettingsActivity$4$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/SettingsActivity$4$4;-><init>(Lorg/telegram/ui/SettingsActivity$4;I)V

    .line 528
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 544
    const-string v23, "Cancel"

    const v24, 0x7f0700fe

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1c

    .line 546
    .end local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_5ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->usernameRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$2900(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_61f

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/ui/ChangeUsernameActivity;-><init>()V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1c

    .line 548
    :cond_61f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->numberRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$3000(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_63f

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/ChangePhoneHelpActivity;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/ui/ChangePhoneHelpActivity;-><init>()V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1c

    .line 550
    :cond_63f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->stickersRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$3100(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_661

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    new-instance v24, Lorg/telegram/ui/StickersActivity;

    const/16 v25, 0x0

    invoke-direct/range {v24 .. v25}, Lorg/telegram/ui/StickersActivity;-><init>(I)V

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1c

    .line 552
    :cond_661
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    # getter for: Lorg/telegram/ui/SettingsActivity;->emojiRow:I
    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->access$3200(Lorg/telegram/ui/SettingsActivity;)I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_1c

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    if-eqz v23, :cond_1c

    .line 556
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v12, v0, [Z

    .line 557
    .local v12, "maskValues":[Z
    new-instance v6, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 559
    .local v6, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 560
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 561
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 562
    .local v11, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 563
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_6bb
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0x13

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_745

    const/16 v23, 0x2

    :goto_6c7
    move/from16 v0, v23

    if-ge v4, v0, :cond_764

    .line 564
    const/4 v14, 0x0

    .line 565
    .local v14, "name":Ljava/lang/String;
    if-nez v4, :cond_748

    .line 566
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->allowBigEmoji:Z

    move/from16 v23, v0

    aput-boolean v23, v12, v4

    .line 567
    const-string v23, "EmojiBigSize"

    const v24, 0x7f0701f3

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 572
    :cond_6e3
    :goto_6e3
    new-instance v8, Lorg/telegram/ui/Cells/CheckBoxCell;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;Z)V

    .line 573
    .local v8, "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTag(Ljava/lang/Object;)V

    .line 574
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 575
    const/16 v23, -0x1

    const/16 v24, 0x30

    invoke-static/range {v23 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    const-string v23, ""

    aget-boolean v24, v12, v4

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v8, v14, v0, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 577
    const-string v23, "dialogTextBlack"

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTextColor(I)V

    .line 578
    new-instance v23, Lorg/telegram/ui/SettingsActivity$4$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lorg/telegram/ui/SettingsActivity$4$5;-><init>(Lorg/telegram/ui/SettingsActivity$4;[Z)V

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6bb

    .end local v8    # "checkBoxCell":Lorg/telegram/ui/Cells/CheckBoxCell;
    .end local v14    # "name":Ljava/lang/String;
    :cond_745
    const/16 v23, 0x1

    goto :goto_6c7

    .line 568
    .restart local v14    # "name":Ljava/lang/String;
    :cond_748
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v4, v0, :cond_6e3

    .line 569
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v23

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->useSystemEmoji:Z

    move/from16 v23, v0

    aput-boolean v23, v12, v4

    .line 570
    const-string v23, "EmojiUseDefault"

    const v24, 0x7f0701f4

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_6e3

    .line 588
    .end local v14    # "name":Ljava/lang/String;
    :cond_764
    new-instance v7, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/SettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    .line 589
    .local v7, "cell":Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 590
    const-string v23, "Save"

    const v24, 0x7f0704ae

    invoke-static/range {v23 .. v24}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 591
    const-string v23, "dialogTextBlue2"

    invoke-static/range {v23 .. v23}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 592
    new-instance v23, Lorg/telegram/ui/SettingsActivity$4$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v12, v2}, Lorg/telegram/ui/SettingsActivity$4$6;-><init>(Lorg/telegram/ui/SettingsActivity$4;[ZI)V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    const/16 v23, -0x1

    const/16 v24, 0x30

    invoke-static/range {v23 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    invoke-virtual {v6, v11}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/SettingsActivity$4;->this$0:Lorg/telegram/ui/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lorg/telegram/ui/SettingsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_1c
.end method
