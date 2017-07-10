.class public Lorg/telegram/ui/Components/AlertsCreator;
.super Ljava/lang/Object;
.source "AlertsCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AlertsCreator$PaymentAlertDelegate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createColorSelectDialog(Landroid/app/Activity;JZZLjava/lang/Runnable;)Landroid/app/Dialog;
    .registers 27
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "dialog_id"    # J
    .param p3, "globalGroup"    # Z
    .param p4, "globalAll"    # Z
    .param p5, "onSelect"    # Ljava/lang/Runnable;

    .prologue
    .line 434
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "Notifications"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 435
    .local v19, "preferences":Landroid/content/SharedPreferences;
    if-eqz p3, :cond_ed

    .line 436
    const-string v4, "GroupLed"

    const v5, -0xffff01

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 450
    .local v16, "currentColor":I
    :goto_16
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 451
    .local v18, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 452
    const/16 v4, 0x9

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v4, 0x0

    const-string v5, "ColorRed"

    const v7, 0x7f070188

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x1

    const-string v5, "ColorOrange"

    const v7, 0x7f070186

    .line 453
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x2

    const-string v5, "ColorYellow"

    const v7, 0x7f07018b

    .line 454
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x3

    const-string v5, "ColorGreen"

    const v7, 0x7f070185

    .line 455
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x4

    const-string v5, "ColorCyan"

    const v7, 0x7f070184

    .line 456
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x5

    const-string v5, "ColorBlue"

    const v7, 0x7f070183

    .line 457
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x6

    const-string v5, "ColorViolet"

    const v7, 0x7f070189

    .line 458
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/4 v4, 0x7

    const-string v5, "ColorPink"

    const v7, 0x7f070187

    .line 459
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    const/16 v4, 0x8

    const-string v5, "ColorWhite"

    const v7, 0x7f07018a

    .line 460
    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v17, v4

    .line 461
    .local v17, "descriptions":[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v6, v4, [I

    const/4 v4, 0x0

    aput v16, v6, v4

    .line 462
    .local v6, "selectedColor":[I
    const/4 v13, 0x0

    .local v13, "a":I
    :goto_9f
    const/16 v4, 0x9

    if-ge v13, v4, :cond_15b

    .line 463
    new-instance v15, Lorg/telegram/ui/Cells/RadioColorCell;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 464
    .local v15, "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v15, v4, v5, v7, v8}, Lorg/telegram/ui/Cells/RadioColorCell;->setPadding(IIII)V

    .line 465
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setTag(Ljava/lang/Object;)V

    .line 466
    sget-object v4, Lorg/telegram/ui/Cells/TextColorCell;->colors:[I

    aget v4, v4, v13

    sget-object v5, Lorg/telegram/ui/Cells/TextColorCell;->colors:[I

    aget v5, v5, v13

    invoke-virtual {v15, v4, v5}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 467
    aget-object v5, v17, v13

    sget-object v4, Lorg/telegram/ui/Cells/TextColorCell;->colorsToSave:[I

    aget v4, v4, v13

    move/from16 v0, v16

    if-ne v0, v4, :cond_158

    const/4 v4, 0x1

    :goto_d8
    invoke-virtual {v15, v5, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/String;Z)V

    .line 468
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 469
    new-instance v4, Lorg/telegram/ui/Components/AlertsCreator$4;

    move-object/from16 v0, v18

    invoke-direct {v4, v0, v6}, Lorg/telegram/ui/Components/AlertsCreator$4;-><init>(Landroid/widget/LinearLayout;[I)V

    invoke-virtual {v15, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    add-int/lit8 v13, v13, 0x1

    goto :goto_9f

    .line 437
    .end local v6    # "selectedColor":[I
    .end local v13    # "a":I
    .end local v15    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .end local v16    # "currentColor":I
    .end local v17    # "descriptions":[Ljava/lang/String;
    .end local v18    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_ed
    if-eqz p4, :cond_fc

    .line 438
    const-string v4, "MessagesLed"

    const v5, -0xffff01

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .restart local v16    # "currentColor":I
    goto/16 :goto_16

    .line 440
    .end local v16    # "currentColor":I
    :cond_fc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "color_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_139

    .line 441
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "color_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, -0xffff01

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .restart local v16    # "currentColor":I
    goto/16 :goto_16

    .line 443
    .end local v16    # "currentColor":I
    :cond_139
    move-wide/from16 v0, p1

    long-to-int v4, v0

    if-gez v4, :cond_14b

    .line 444
    const-string v4, "GroupLed"

    const v5, -0xffff01

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .restart local v16    # "currentColor":I
    goto/16 :goto_16

    .line 446
    .end local v16    # "currentColor":I
    :cond_14b
    const-string v4, "MessagesLed"

    const v5, -0xffff01

    move-object/from16 v0, v19

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .restart local v16    # "currentColor":I
    goto/16 :goto_16

    .line 467
    .restart local v6    # "selectedColor":[I
    .restart local v13    # "a":I
    .restart local v15    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .restart local v17    # "descriptions":[Ljava/lang/String;
    .restart local v18    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_158
    const/4 v4, 0x0

    goto/16 :goto_d8

    .line 481
    .end local v15    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_15b
    new-instance v14, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 482
    .local v14, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v4, "LedColor"

    const v5, 0x7f0702dc

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 483
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 484
    const-string v4, "Set"

    const v5, 0x7f0704f0

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    new-instance v4, Lorg/telegram/ui/Components/AlertsCreator$5;

    move/from16 v5, p4

    move/from16 v7, p3

    move-wide/from16 v8, p1

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/AlertsCreator$5;-><init>(Z[IZJLjava/lang/Runnable;)V

    invoke-virtual {v14, v11, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 502
    const-string v4, "LedDisabled"

    const v5, 0x7f0702dd

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lorg/telegram/ui/Components/AlertsCreator$6;

    move/from16 v8, p4

    move/from16 v9, p3

    move-wide/from16 v10, p1

    move-object/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/Components/AlertsCreator$6;-><init>(ZZJLjava/lang/Runnable;)V

    invoke-virtual {v14, v4, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 520
    if-nez p4, :cond_1be

    if-nez p3, :cond_1be

    .line 521
    const-string v4, "Default"

    const v5, 0x7f0701c5

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/AlertsCreator$7;

    move-wide/from16 v0, p1

    move-object/from16 v2, p5

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/ui/Components/AlertsCreator$7;-><init>(JLjava/lang/Runnable;)V

    invoke-virtual {v14, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 534
    :cond_1be
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public static createMuteAlert(Landroid/content/Context;J)Landroid/app/Dialog;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog_id"    # J

    .prologue
    const/4 v9, 0x2

    const v8, 0x7f070338

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 230
    if-nez p0, :cond_a

    .line 231
    const/4 v2, 0x0

    .line 279
    :goto_9
    return-object v2

    .line 234
    :cond_a
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 235
    .local v0, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const-string v2, "Notifications"

    const v3, 0x7f0703bb

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 236
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/CharSequence;

    const-string v2, "MuteFor"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "Hours"

    .line 237
    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v8, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "MuteFor"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "Hours"

    const/16 v5, 0x8

    .line 238
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v8, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "MuteFor"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "Days"

    .line 239
    invoke-static {v4, v9}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v8, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x3

    const-string v3, "MuteDisable"

    const v4, 0x7f070337

    .line 240
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 242
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v2, Lorg/telegram/ui/Components/AlertsCreator$1;

    invoke-direct {v2, p1, p2}, Lorg/telegram/ui/Components/AlertsCreator$1;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 279
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v2

    goto :goto_9
.end method

.method public static createPopupSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/Runnable;)Landroid/app/Dialog;
    .registers 16
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "globalGroup"    # Z
    .param p3, "globalAll"    # Z
    .param p4, "onSelect"    # Ljava/lang/Runnable;

    .prologue
    .line 714
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v8, "Notifications"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 715
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const/4 v7, 0x1

    new-array v6, v7, [I

    .line 716
    .local v6, "selected":[I
    if-eqz p3, :cond_97

    .line 717
    const/4 v7, 0x0

    const-string v8, "popupAll"

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    aput v8, v6, v7

    .line 721
    :cond_18
    :goto_18
    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "NoPopup"

    const v9, 0x7f070364

    .line 722
    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string v8, "OnlyWhenScreenOn"

    const v9, 0x7f0703df

    .line 723
    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const-string v8, "OnlyWhenScreenOff"

    const v9, 0x7f0703de

    .line 724
    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x3

    const-string v8, "AlwaysShowPopup"

    const v9, 0x7f070085

    .line 725
    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    .line 728
    .local v3, "descriptions":[Ljava/lang/String;
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 729
    .local v4, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 731
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_55
    array-length v7, v3

    if-ge v0, v7, :cond_a7

    .line 732
    new-instance v2, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 733
    .local v2, "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setTag(Ljava/lang/Object;)V

    .line 734
    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    const/4 v8, 0x0

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v8, v9, v10}, Lorg/telegram/ui/Cells/RadioColorCell;->setPadding(IIII)V

    .line 735
    const v7, -0x4c4c4d

    const v8, -0xc85610

    invoke-virtual {v2, v7, v8}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 736
    aget-object v8, v3, v0

    const/4 v7, 0x0

    aget v7, v6, v7

    if-ne v7, v0, :cond_a5

    const/4 v7, 0x1

    :goto_86
    invoke-virtual {v2, v8, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/String;Z)V

    .line 737
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 738
    new-instance v7, Lorg/telegram/ui/Components/AlertsCreator$10;

    invoke-direct {v7, v6, p2, p1, p4}, Lorg/telegram/ui/Components/AlertsCreator$10;-><init>([IZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 718
    .end local v0    # "a":I
    .end local v2    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .end local v3    # "descriptions":[Ljava/lang/String;
    .end local v4    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_97
    if-eqz p2, :cond_18

    .line 719
    const/4 v7, 0x0

    const-string v8, "popupGroup"

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    aput v8, v6, v7

    goto/16 :goto_18

    .line 736
    .restart local v0    # "a":I
    .restart local v2    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .restart local v3    # "descriptions":[Ljava/lang/String;
    .restart local v4    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_a5
    const/4 v7, 0x0

    goto :goto_86

    .line 756
    .end local v2    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_a7
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 757
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v7, "PopupNotification"

    const v8, 0x7f070468

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 758
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 759
    const-string v7, "Cancel"

    const v8, 0x7f0700fe

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 760
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v7

    return-object v7
.end method

.method public static createPrioritySelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JZZLjava/lang/Runnable;)Landroid/app/Dialog;
    .registers 23
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "dialog_id"    # J
    .param p4, "globalGroup"    # Z
    .param p5, "globalAll"    # Z
    .param p6, "onSelect"    # Ljava/lang/Runnable;

    .prologue
    .line 640
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 641
    .local v14, "preferences":Landroid/content/SharedPreferences;
    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 643
    .local v3, "selected":[I
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-eqz v2, :cond_cd

    .line 644
    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "priority_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v14, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v2

    .line 645
    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_c4

    .line 646
    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v3, v2

    .line 650
    :goto_39
    const/4 v2, 0x4

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "NotificationsPrioritySettings"

    const v5, 0x7f0703cc

    .line 651
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x1

    const-string v4, "NotificationsPriorityDefault"

    const v5, 0x7f0703c8

    .line 652
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x2

    const-string v4, "NotificationsPriorityHigh"

    const v5, 0x7f0703c9

    .line 653
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x3

    const-string v4, "NotificationsPriorityMax"

    const v5, 0x7f0703cb

    .line 654
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    .line 669
    .local v12, "descriptions":[Ljava/lang/String;
    :goto_6c
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 670
    .local v13, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 672
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_78
    array-length v2, v12

    if-ge v9, v2, :cond_111

    .line 673
    new-instance v11, Lorg/telegram/ui/Cells/RadioColorCell;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 674
    .local v11, "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v4, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v11, v2, v4, v5, v6}, Lorg/telegram/ui/Cells/RadioColorCell;->setPadding(IIII)V

    .line 675
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setTag(Ljava/lang/Object;)V

    .line 676
    const v2, -0x4c4c4d

    const v4, -0xc85610

    invoke-virtual {v11, v2, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 677
    aget-object v4, v12, v9

    const/4 v2, 0x0

    aget v2, v3, v2

    if-ne v2, v9, :cond_10f

    const/4 v2, 0x1

    :goto_ab
    invoke-virtual {v11, v4, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/String;Z)V

    .line 678
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 679
    new-instance v2, Lorg/telegram/ui/Components/AlertsCreator$9;

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AlertsCreator$9;-><init>([IJZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    add-int/lit8 v9, v9, 0x1

    goto :goto_78

    .line 648
    .end local v9    # "a":I
    .end local v11    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .end local v12    # "descriptions":[Ljava/lang/String;
    .end local v13    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_c4
    const/4 v2, 0x0

    aget v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v2

    goto/16 :goto_39

    .line 657
    :cond_cd
    if-eqz p5, :cond_102

    .line 658
    const/4 v2, 0x0

    const-string v4, "priority_messages"

    const/4 v5, 0x1

    invoke-interface {v14, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v2

    .line 662
    :cond_d9
    :goto_d9
    const/4 v2, 0x3

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "NotificationsPriorityDefault"

    const v5, 0x7f0703c8

    .line 663
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x1

    const-string v4, "NotificationsPriorityHigh"

    const v5, 0x7f0703c9

    .line 664
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x2

    const-string v4, "NotificationsPriorityMax"

    const v5, 0x7f0703cb

    .line 665
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    .restart local v12    # "descriptions":[Ljava/lang/String;
    goto/16 :goto_6c

    .line 659
    .end local v12    # "descriptions":[Ljava/lang/String;
    :cond_102
    if-eqz p4, :cond_d9

    .line 660
    const/4 v2, 0x0

    const-string v4, "priority_group"

    const/4 v5, 0x1

    invoke-interface {v14, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v2

    goto :goto_d9

    .line 677
    .restart local v9    # "a":I
    .restart local v11    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .restart local v12    # "descriptions":[Ljava/lang/String;
    .restart local v13    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_10f
    const/4 v2, 0x0

    goto :goto_ab

    .line 706
    .end local v11    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_111
    new-instance v10, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 707
    .local v10, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v2, "NotificationsPriority"

    const v4, 0x7f0703c7

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 708
    invoke-virtual {v10, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 709
    const-string v2, "Cancel"

    const v4, 0x7f0700fe

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v10, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 710
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public static createReportAlert(Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;)Landroid/app/Dialog;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog_id"    # J
    .param p3, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    .line 283
    if-eqz p0, :cond_4

    if-nez p3, :cond_6

    .line 284
    :cond_4
    const/4 v2, 0x0

    .line 322
    :goto_5
    return-object v2

    .line 287
    :cond_6
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    .local v0, "builder":Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
    const-string v2, "ReportChat"

    const v3, 0x7f070482

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 289
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "ReportChatSpam"

    const v4, 0x7f070486

    .line 290
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ReportChatViolence"

    const v4, 0x7f070487

    .line 291
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ReportChatPornography"

    const v4, 0x7f070485

    .line 292
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "ReportChatOther"

    const v4, 0x7f070484

    .line 293
    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 295
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v2, Lorg/telegram/ui/Components/AlertsCreator$2;

    invoke-direct {v2, p1, p2, p3}, Lorg/telegram/ui/Components/AlertsCreator$2;-><init>(JLorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 322
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v2

    goto :goto_5
.end method

.method public static createSingleChoiceDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .registers 15
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "options"    # [Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "selected"    # I
    .param p5, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v5, 0x1

    const/high16 v8, 0x40800000    # 4.0f

    const/4 v6, 0x0

    .line 764
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 765
    .local v3, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 767
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_d
    array-length v4, p2

    if-ge v0, v4, :cond_48

    .line 768
    new-instance v2, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 769
    .local v2, "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v2, v4, v6, v7, v6}, Lorg/telegram/ui/Cells/RadioColorCell;->setPadding(IIII)V

    .line 770
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setTag(Ljava/lang/Object;)V

    .line 771
    const v4, -0x4c4c4d

    const v7, -0xc85610

    invoke-virtual {v2, v4, v7}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 772
    aget-object v7, p2, v0

    if-ne p4, v0, :cond_46

    move v4, v5

    :goto_35
    invoke-virtual {v2, v7, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/String;Z)V

    .line 773
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 774
    new-instance v4, Lorg/telegram/ui/Components/AlertsCreator$11;

    invoke-direct {v4, p1, p5}, Lorg/telegram/ui/Components/AlertsCreator$11;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_46
    move v4, v6

    .line 772
    goto :goto_35

    .line 786
    .end local v2    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_48
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 787
    .local v1, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 788
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 789
    const-string v4, "Cancel"

    const v5, 0x7f0700fe

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 790
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public static createTTLAlert(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    const/16 v6, 0x14

    const/16 v5, 0x10

    const/4 v4, 0x0

    .line 794
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 795
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v2, "MessageLifetime"

    const v3, 0x7f070313

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 796
    new-instance v1, Lorg/telegram/ui/Components/NumberPicker;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 797
    .local v1, "numberPicker":Lorg/telegram/ui/Components/NumberPicker;
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/NumberPicker;->setMinValue(I)V

    .line 798
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/NumberPicker;->setMaxValue(I)V

    .line 799
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-lez v2, :cond_4b

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-ge v2, v5, :cond_4b

    .line 800
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    .line 814
    :cond_2e
    :goto_2e
    new-instance v2, Lorg/telegram/ui/Components/AlertsCreator$12;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AlertsCreator$12;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->setFormatter(Lorg/telegram/ui/Components/NumberPicker$Formatter;)V

    .line 835
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 836
    const-string v2, "Done"

    const v3, 0x7f0701e8

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/AlertsCreator$13;

    invoke-direct {v3, p1, v1}, Lorg/telegram/ui/Components/AlertsCreator$13;-><init>(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/ui/Components/NumberPicker;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 860
    return-object v0

    .line 801
    :cond_4b
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_55

    .line 802
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_2e

    .line 803
    :cond_55
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_61

    .line 804
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_2e

    .line 805
    :cond_61
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const/16 v3, 0xe10

    if-ne v2, v3, :cond_6d

    .line 806
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_2e

    .line 807
    :cond_6d
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const v3, 0x15180

    if-ne v2, v3, :cond_7a

    .line 808
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_2e

    .line 809
    :cond_7a
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    const v3, 0x93a80

    if-ne v2, v3, :cond_85

    .line 810
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_2e

    .line 811
    :cond_85
    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    if-nez v2, :cond_2e

    .line 812
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/NumberPicker;->setValue(I)V

    goto :goto_2e
.end method

.method public static createVibrationSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JLjava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;
    .registers 22
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "dialog_id"    # J
    .param p4, "prefKeyPrefix"    # Ljava/lang/String;
    .param p5, "onSelect"    # Ljava/lang/Runnable;

    .prologue
    .line 548
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 549
    .local v14, "preferences":Landroid/content/SharedPreferences;
    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 551
    .local v3, "selected":[I
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-eqz v2, :cond_d0

    .line 552
    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v14, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v2

    .line 553
    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_c4

    .line 554
    const/4 v2, 0x0

    const/4 v4, 0x2

    aput v4, v3, v2

    .line 558
    :cond_39
    :goto_39
    const/4 v2, 0x4

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "VibrationDefault"

    const v5, 0x7f070574

    .line 559
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x1

    const-string v4, "Short"

    const v5, 0x7f07050c

    .line 560
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x2

    const-string v4, "Long"

    const v5, 0x7f0702f9

    .line 561
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x3

    const-string v4, "VibrationDisabled"

    const v5, 0x7f070575

    .line 562
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    .line 582
    .local v12, "descriptions":[Ljava/lang/String;
    :goto_6c
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 583
    .local v13, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 585
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_78
    array-length v2, v12

    if-ge v9, v2, :cond_13d

    .line 586
    new-instance v11, Lorg/telegram/ui/Cells/RadioColorCell;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 587
    .local v11, "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v4, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v11, v2, v4, v5, v6}, Lorg/telegram/ui/Cells/RadioColorCell;->setPadding(IIII)V

    .line 588
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setTag(Ljava/lang/Object;)V

    .line 589
    const v2, -0x4c4c4d

    const v4, -0xc85610

    invoke-virtual {v11, v2, v4}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 590
    aget-object v4, v12, v9

    const/4 v2, 0x0

    aget v2, v3, v2

    if-ne v2, v9, :cond_13a

    const/4 v2, 0x1

    :goto_ab
    invoke-virtual {v11, v4, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/String;Z)V

    .line 591
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 592
    new-instance v2, Lorg/telegram/ui/Components/AlertsCreator$8;

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AlertsCreator$8;-><init>([IJLjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v11, v2}, Lorg/telegram/ui/Cells/RadioColorCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    add-int/lit8 v9, v9, 0x1

    goto :goto_78

    .line 555
    .end local v9    # "a":I
    .end local v11    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .end local v12    # "descriptions":[Ljava/lang/String;
    .end local v13    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_c4
    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_39

    .line 556
    const/4 v2, 0x0

    const/4 v4, 0x3

    aput v4, v3, v2

    goto/16 :goto_39

    .line 565
    :cond_d0
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-interface {v14, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v2

    .line 566
    const/4 v2, 0x0

    aget v2, v3, v2

    if-nez v2, :cond_124

    .line 567
    const/4 v2, 0x0

    const/4 v4, 0x1

    aput v4, v3, v2

    .line 573
    :cond_e3
    :goto_e3
    const/4 v2, 0x5

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "VibrationDisabled"

    const v5, 0x7f070575

    .line 574
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x1

    const-string v4, "VibrationDefault"

    const v5, 0x7f070574

    .line 575
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x2

    const-string v4, "Short"

    const v5, 0x7f07050c

    .line 576
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x3

    const-string v4, "Long"

    const v5, 0x7f0702f9

    .line 577
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    const/4 v2, 0x4

    const-string v4, "OnlyIfSilent"

    const v5, 0x7f0703dd

    .line 578
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v2

    .restart local v12    # "descriptions":[Ljava/lang/String;
    goto/16 :goto_6c

    .line 568
    .end local v12    # "descriptions":[Ljava/lang/String;
    :cond_124
    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12f

    .line 569
    const/4 v2, 0x0

    const/4 v4, 0x2

    aput v4, v3, v2

    goto :goto_e3

    .line 570
    :cond_12f
    const/4 v2, 0x0

    aget v2, v3, v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_e3

    .line 571
    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v3, v2

    goto :goto_e3

    .line 590
    .restart local v9    # "a":I
    .restart local v11    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    .restart local v12    # "descriptions":[Ljava/lang/String;
    .restart local v13    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_13a
    const/4 v2, 0x0

    goto/16 :goto_ab

    .line 632
    .end local v11    # "cell":Lorg/telegram/ui/Cells/RadioColorCell;
    :cond_13d
    new-instance v10, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 633
    .local v10, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v2, "Vibrate"

    const v4, 0x7f070573

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 634
    invoke-virtual {v10, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 635
    const-string v2, "Cancel"

    const v4, 0x7f0700fe

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v10, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 636
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public static createVibrationSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JZZLjava/lang/Runnable;)Landroid/app/Dialog;
    .registers 13
    .param p0, "parentActivity"    # Landroid/app/Activity;
    .param p1, "parentFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "dialog_id"    # J
    .param p4, "globalGroup"    # Z
    .param p5, "globalAll"    # Z
    .param p6, "onSelect"    # Ljava/lang/Runnable;

    .prologue
    .line 539
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_11

    .line 540
    const-string v4, "vibrate_"

    .local v4, "prefix":Ljava/lang/String;
    :goto_8
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p6

    .line 544
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AlertsCreator;->createVibrationSelectDialog(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;JLjava/lang/String;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 542
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_11
    if-eqz p4, :cond_16

    const-string v4, "vibrate_group"

    .restart local v4    # "prefix":Ljava/lang/String;
    :goto_15
    goto :goto_8

    .end local v4    # "prefix":Ljava/lang/String;
    :cond_16
    const-string v4, "vibrate_messages"

    goto :goto_15
.end method

.method private static getFloodWaitString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 326
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 328
    .local v0, "time":I
    const/16 v2, 0x3c

    if-ge v0, v2, :cond_22

    .line 329
    const-string v2, "Seconds"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "timeString":Ljava/lang/String;
    :goto_12
    const-string v2, "FloodWaitTime"

    const v3, 0x7f07021f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 331
    .end local v1    # "timeString":Ljava/lang/String;
    :cond_22
    const-string v2, "Minutes"

    div-int/lit8 v3, v0, 0x3c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "timeString":Ljava/lang/String;
    goto :goto_12
.end method

.method public static varargs processError(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;
    .registers 11
    .param p0, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "request"    # Lorg/telegram/tgnet/TLObject;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const v6, 0x7f070182

    const v5, 0x7f070210

    const/4 v2, 0x1

    const v4, 0x7f07021e

    const/4 v1, 0x0

    .line 45
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 v3, 0x196

    if-eq v0, v3, :cond_15

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 46
    :cond_15
    const/4 v0, 0x0

    .line 204
    :goto_16
    return-object v0

    .line 48
    :cond_17
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;

    if-nez v0, :cond_2b

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_editAdmin;

    if-nez v0, :cond_2b

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_inviteToChannel;

    if-nez v0, :cond_2b

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;

    if-nez v0, :cond_2b

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_startBot;

    if-eqz v0, :cond_58

    .line 53
    :cond_2b
    if-eqz p1, :cond_3c

    .line 54
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v2, p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showAddUserAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 204
    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    goto :goto_16

    .line 56
    :cond_3c
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PEER_FLOOD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 57
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_3a

    .line 60
    :cond_58
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_createChat;

    if-eqz v0, :cond_72

    .line 61
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "FLOOD_WAIT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 62
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/AlertsCreator;->showFloodWaitAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_3a

    .line 64
    :cond_6c
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Components/AlertsCreator;->showAddUserAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    goto :goto_3a

    .line 66
    :cond_72
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_createChannel;

    if-eqz v0, :cond_86

    .line 67
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 68
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/AlertsCreator;->showFloodWaitAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_3a

    .line 70
    :cond_86
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    if-eqz v0, :cond_a1

    .line 71
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "MESSAGE_NOT_MODIFIED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 72
    const-string v0, "EditMessageError"

    const v1, 0x7f0701ed

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_3a

    .line 74
    :cond_a1
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    if-nez v0, :cond_bd

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-nez v0, :cond_bd

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_geochats_sendMessage;

    if-nez v0, :cond_bd

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    if-nez v0, :cond_bd

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    if-nez v0, :cond_bd

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_geochats_sendMedia;

    if-nez v0, :cond_bd

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    if-eqz v0, :cond_da

    .line 81
    :cond_bd
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PEER_FLOOD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 82
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_3a

    .line 84
    :cond_da
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    if-eqz v0, :cond_119

    .line 85
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 86
    const-string v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 87
    :cond_f3
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "USERS_TOO_MUCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 88
    const-string v0, "JoinToGroupErrorFull"

    const v1, 0x7f0702b0

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 90
    :cond_10b
    const-string v0, "JoinToGroupErrorNotExist"

    const v1, 0x7f0702b1

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 92
    :cond_119
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    if-eqz v0, :cond_151

    .line 93
    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 94
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorOccurred"

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3a

    .line 96
    :cond_151
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;

    if-eqz v0, :cond_1a8

    .line 97
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_CODE_EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_169

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_CODE_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_177

    .line 98
    :cond_169
    const-string v0, "InvalidCode"

    const v1, 0x7f070298

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 99
    :cond_177
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_CODE_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18c

    .line 100
    const-string v0, "CodeExpired"

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 101
    :cond_18c
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a1

    .line 102
    const-string v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 104
    :cond_1a1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 106
    :cond_1a8
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    if-eqz v0, :cond_23a

    .line 107
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_NUMBER_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c4

    .line 108
    const-string v0, "InvalidPhoneNumber"

    const v1, 0x7f07029c

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 109
    :cond_1c4
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_CODE_EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d8

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_CODE_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e6

    .line 110
    :cond_1d8
    const-string v0, "InvalidCode"

    const v1, 0x7f070298

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 111
    :cond_1e6
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_CODE_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1fb

    .line 112
    const-string v0, "CodeExpired"

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 113
    :cond_1fb
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_210

    .line 114
    const-string v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 115
    :cond_210
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_3a

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorOccurred"

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 118
    :cond_23a
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_sendConfirmPhoneCode;

    if-eqz v0, :cond_279

    .line 119
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_253

    .line 120
    const-string v0, "CancelLinkExpired"

    const v1, 0x7f070101

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_16

    .line 121
    :cond_253
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz v0, :cond_3a

    .line 122
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26d

    .line 123
    const-string v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_16

    .line 125
    :cond_26d
    const-string v0, "ErrorOccurred"

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_16

    .line 128
    :cond_279
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;

    if-eqz v0, :cond_2e8

    .line 129
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_NUMBER_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_295

    .line 130
    const-string v0, "InvalidPhoneNumber"

    const v1, 0x7f07029c

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 131
    :cond_295
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_CODE_EMPTY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a9

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_CODE_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b7

    .line 132
    :cond_2a9
    const-string v0, "InvalidCode"

    const v1, 0x7f070298

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 133
    :cond_2b7
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_CODE_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2cc

    .line 134
    const-string v0, "CodeExpired"

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 135
    :cond_2cc
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e1

    .line 136
    const-string v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 138
    :cond_2e1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 140
    :cond_2e8
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_sendChangePhoneCode;

    if-eqz v0, :cond_37b

    .line 141
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PHONE_NUMBER_INVALID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_304

    .line 142
    const-string v0, "InvalidPhoneNumber"

    const v1, 0x7f07029c

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 143
    :cond_304
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PHONE_CODE_EMPTY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_318

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PHONE_CODE_INVALID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_326

    .line 144
    :cond_318
    const-string v0, "InvalidCode"

    const v1, 0x7f070298

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 145
    :cond_326
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PHONE_CODE_EXPIRED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33b

    .line 146
    const-string v0, "CodeExpired"

    invoke-static {v0, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 147
    :cond_33b
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "FLOOD_WAIT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_350

    .line 148
    const-string v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 149
    :cond_350
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PHONE_NUMBER_OCCUPIED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_370

    .line 150
    const-string v3, "ChangePhoneNumberOccupied"

    const v4, 0x7f07010b

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v0, p3, v1

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    invoke-static {v3, v4, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 152
    :cond_370
    const-string v0, "ErrorOccurred"

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 154
    :cond_37b
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;

    if-eqz v0, :cond_3df

    .line 155
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_4ba

    :cond_389
    move v1, v0

    :goto_38a
    packed-switch v1, :pswitch_data_4c8

    .line 166
    const-string v0, "ErrorOccurred"

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 155
    :sswitch_398
    const-string v2, "USERNAME_INVALID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_389

    goto :goto_38a

    :sswitch_3a1
    const-string v1, "USERNAME_OCCUPIED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_389

    move v1, v2

    goto :goto_38a

    :sswitch_3ab
    const-string v1, "USERNAMES_UNAVAILABLE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_389

    const/4 v1, 0x2

    goto :goto_38a

    .line 157
    :pswitch_3b5
    const-string v0, "UsernameInvalid"

    const v1, 0x7f070568

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 160
    :pswitch_3c3
    const-string v0, "UsernameInUse"

    const v1, 0x7f070567

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 163
    :pswitch_3d1
    const-string v0, "FeatureUnavailable"

    const v1, 0x7f070215

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 169
    :cond_3df
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    if-eqz v0, :cond_41e

    .line 170
    if-eqz p0, :cond_3ef

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3fa

    .line 171
    :cond_3ef
    const-string v0, "FloodWait"

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 173
    :cond_3fa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorOccurred"

    invoke-static {v1, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto/16 :goto_3a

    .line 175
    :cond_41e
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    if-nez v0, :cond_426

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_account_getTmpPassword;

    if-eqz v0, :cond_442

    .line 176
    :cond_426
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "FLOOD_WAIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43b

    .line 177
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/Components/AlertsCreator;->getFloodWaitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_3a

    .line 179
    :cond_43b
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_3a

    .line 181
    :cond_442
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_sendPaymentForm;

    if-eqz v0, :cond_48a

    .line 182
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_4d2

    :cond_450
    move v1, v0

    :goto_451
    packed-switch v1, :pswitch_data_4dc

    .line 190
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_3a

    .line 182
    :sswitch_45b
    const-string v2, "BOT_PRECHECKOUT_FAILED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_450

    goto :goto_451

    :sswitch_464
    const-string v1, "PAYMENT_FAILED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_450

    move v1, v2

    goto :goto_451

    .line 184
    :pswitch_46e
    const-string v0, "PaymentPrecheckoutFailed"

    const v1, 0x7f070420

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_3a

    .line 187
    :pswitch_47c
    const-string v0, "PaymentFailed"

    const v1, 0x7f07041d

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_3a

    .line 193
    :cond_48a
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_validateRequestedInfo;

    if-eqz v0, :cond_3a

    .line 194
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_4e4

    :cond_498
    :goto_498
    packed-switch v0, :pswitch_data_4ea

    .line 199
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_3a

    .line 194
    :pswitch_4a2
    const-string v3, "SHIPPING_NOT_AVAILABLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_498

    move v0, v1

    goto :goto_498

    .line 196
    :pswitch_4ac
    const-string v0, "PaymentNoShippingMethod"

    const v1, 0x7f07041f

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_3a

    .line 155
    :sswitch_data_4ba
    .sparse-switch
        -0x87506d2 -> :sswitch_3ab
        0x1137676e -> :sswitch_398
        0x1fc79be7 -> :sswitch_3a1
    .end sparse-switch

    :pswitch_data_4c8
    .packed-switch 0x0
        :pswitch_3b5
        :pswitch_3c3
        :pswitch_3d1
    .end packed-switch

    .line 182
    :sswitch_data_4d2
    .sparse-switch
        -0x443101f5 -> :sswitch_45b
        -0x2ebe874a -> :sswitch_464
    .end sparse-switch

    :pswitch_data_4dc
    .packed-switch 0x0
        :pswitch_46e
        :pswitch_47c
    .end packed-switch

    .line 194
    :pswitch_data_4e4
    .packed-switch 0x68c9574c
        :pswitch_4a2
    .end packed-switch

    :pswitch_data_4ea
    .packed-switch 0x0
        :pswitch_4ac
    .end packed-switch
.end method

.method public static showAddUserAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .registers 8
    .param p0, "error"    # Ljava/lang/String;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p2, "isChannel"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 356
    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_d

    .line 430
    :cond_c
    :goto_c
    return-void

    .line 359
    :cond_d
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 360
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "AppName"

    const v3, 0x7f070092

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 361
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1c0

    :cond_2a
    :goto_2a
    packed-switch v1, :pswitch_data_1f2

    .line 425
    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 428
    :goto_30
    const-string v1, "OK"

    const v3, 0x7f0703d4

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 429
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p1, v1, v2, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_c

    .line 361
    :sswitch_44
    const-string v3, "PEER_FLOOD"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v1, 0x0

    goto :goto_2a

    :sswitch_4e
    const-string v3, "USER_BLOCKED"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    move v1, v2

    goto :goto_2a

    :sswitch_58
    const-string v3, "USER_BOT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v1, 0x2

    goto :goto_2a

    :sswitch_62
    const-string v3, "USER_ID_INVALID"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v1, 0x3

    goto :goto_2a

    :sswitch_6c
    const-string v3, "USERS_TOO_MUCH"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v1, 0x4

    goto :goto_2a

    :sswitch_76
    const-string v3, "USER_NOT_MUTUAL_CONTACT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v1, 0x5

    goto :goto_2a

    :sswitch_80
    const-string v3, "ADMINS_TOO_MUCH"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v1, 0x6

    goto :goto_2a

    :sswitch_8a
    const-string v3, "BOTS_TOO_MUCH"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/4 v1, 0x7

    goto :goto_2a

    :sswitch_94
    const-string v3, "USER_PRIVACY_RESTRICTED"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/16 v1, 0x8

    goto :goto_2a

    :sswitch_9f
    const-string v3, "USERS_TOO_FEW"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/16 v1, 0x9

    goto :goto_2a

    :sswitch_aa
    const-string v3, "USER_RESTRICTED"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/16 v1, 0xa

    goto/16 :goto_2a

    :sswitch_b6
    const-string v3, "YOU_BLOCKED_USER"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/16 v1, 0xb

    goto/16 :goto_2a

    .line 363
    :pswitch_c2
    const-string v1, "NobodyLikesSpam2"

    const v3, 0x7f070374

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 364
    const-string v1, "MoreInfo"

    const v3, 0x7f070336

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/AlertsCreator$3;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/AlertsCreator$3;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_30

    .line 374
    :pswitch_e1
    if-eqz p2, :cond_f1

    .line 375
    const-string v1, "ChannelUserCantAdd"

    const v3, 0x7f07015e

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_30

    .line 377
    :cond_f1
    const-string v1, "GroupUserCantAdd"

    const v3, 0x7f070273

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_30

    .line 381
    :pswitch_ff
    if-eqz p2, :cond_10f

    .line 382
    const-string v1, "ChannelUserAddLimit"

    const v3, 0x7f07015d

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_30

    .line 384
    :cond_10f
    const-string v1, "GroupUserAddLimit"

    const v3, 0x7f070272

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_30

    .line 388
    :pswitch_11d
    if-eqz p2, :cond_12d

    .line 389
    const-string v1, "ChannelUserLeftError"

    const v3, 0x7f070161

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_30

    .line 391
    :cond_12d
    const-string v1, "GroupUserLeftError"

    const v3, 0x7f070276

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_30

    .line 395
    :pswitch_13b
    if-eqz p2, :cond_14b

    .line 396
    const-string v1, "ChannelUserCantAdmin"

    const v3, 0x7f07015f

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_30

    .line 398
    :cond_14b
    const-string v1, "GroupUserCantAdmin"

    const v3, 0x7f070274

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_30

    .line 402
    :pswitch_159
    if-eqz p2, :cond_169

    .line 403
    const-string v1, "ChannelUserCantBot"

    const v3, 0x7f070160

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_30

    .line 405
    :cond_169
    const-string v1, "GroupUserCantBot"

    const v3, 0x7f070275

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_30

    .line 409
    :pswitch_177
    if-eqz p2, :cond_187

    .line 410
    const-string v1, "InviteToChannelError"

    const v3, 0x7f0702a2

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_30

    .line 412
    :cond_187
    const-string v1, "InviteToGroupError"

    const v3, 0x7f0702a4

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_30

    .line 416
    :pswitch_195
    const-string v1, "CreateGroupError"

    const v3, 0x7f0701a0

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_30

    .line 419
    :pswitch_1a3
    const-string v1, "UserRestricted"

    const v3, 0x7f070560

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_30

    .line 422
    :pswitch_1b1
    const-string v1, "YouBlockedUser"

    const v3, 0x7f0705bd

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto/16 :goto_30

    .line 361
    nop

    :sswitch_data_1c0
    .sparse-switch
        -0x691c616a -> :sswitch_9f
        -0x201302a8 -> :sswitch_4e
        -0x1e9056b1 -> :sswitch_aa
        -0x1b10193f -> :sswitch_44
        -0x1909e875 -> :sswitch_8a
        0x1ed73733 -> :sswitch_58
        0x3266369e -> :sswitch_b6
        0x45939caf -> :sswitch_6c
        0x492297a7 -> :sswitch_62
        0x4ab0d713 -> :sswitch_80
        0x60bf92d5 -> :sswitch_76
        0x723eea86 -> :sswitch_94
    .end sparse-switch

    :pswitch_data_1f2
    .packed-switch 0x0
        :pswitch_c2
        :pswitch_e1
        :pswitch_e1
        :pswitch_e1
        :pswitch_ff
        :pswitch_11d
        :pswitch_13b
        :pswitch_159
        :pswitch_177
        :pswitch_195
        :pswitch_1a3
        :pswitch_1b1
    .end packed-switch
.end method

.method public static showFloodWaitAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .registers 11
    .param p0, "error"    # Ljava/lang/String;
    .param p1, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 337
    if-eqz p0, :cond_14

    const-string v3, "FLOOD_WAIT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_15

    .line 353
    :cond_14
    :goto_14
    return-void

    .line 340
    :cond_15
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 342
    .local v1, "time":I
    const/16 v3, 0x3c

    if-ge v1, v3, :cond_61

    .line 343
    const-string v3, "Seconds"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "timeString":Ljava/lang/String;
    :goto_27
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 349
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v3, "AppName"

    const v4, 0x7f070092

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 350
    const-string v3, "FloodWaitTime"

    const v4, 0x7f07021f

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 351
    const-string v3, "OK"

    const v4, 0x7f0703d4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 352
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v3

    invoke-virtual {p1, v3, v7, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    goto :goto_14

    .line 345
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v2    # "timeString":Ljava/lang/String;
    :cond_61
    const-string v3, "Minutes"

    div-int/lit8 v4, v1, 0x3c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "timeString":Ljava/lang/String;
    goto :goto_27
.end method

.method public static showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;
    .registers 6
    .param p0, "baseFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 217
    if-eqz p1, :cond_b

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_c

    .line 226
    :cond_b
    :goto_b
    return-object v1

    .line 220
    :cond_c
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v2, "AppName"

    const v3, 0x7f070092

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 222
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 223
    const-string v2, "OK"

    const v3, 0x7f0703d4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 224
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 225
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_b
.end method

.method public static showSimpleToast(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/widget/Toast;
    .registers 5
    .param p0, "baseFragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 208
    if-eqz p1, :cond_a

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_c

    .line 209
    :cond_a
    const/4 v0, 0x0

    .line 213
    :goto_b
    return-object v0

    .line 211
    :cond_c
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 212
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_b
.end method
