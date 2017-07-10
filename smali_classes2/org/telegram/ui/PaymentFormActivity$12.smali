.class Lorg/telegram/ui/PaymentFormActivity$12;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private actionPosition:I

.field private characterAction:I

.field private isYear:Z

.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 1266
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1268
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->characterAction:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 22
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->ignoreOnCardChange:Z
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$2700(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 1379
    :goto_c
    return-void

    .line 1300
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v11, v17, v18

    .line 1301
    .local v11, "phoneField":Landroid/widget/EditText;
    invoke-virtual {v11}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v13

    .line 1302
    .local v13, "start":I
    const-string v10, "0123456789"

    .line 1303
    .local v10, "phoneChars":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1304
    .local v14, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->characterAction:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6e

    .line 1305
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->actionPosition:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->actionPosition:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1306
    add-int/lit8 v13, v13, -0x1

    .line 1308
    :cond_6e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1309
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_7a
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v2, v0, :cond_96

    .line 1310
    add-int/lit8 v17, v2, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1311
    .local v5, "ch":Ljava/lang/String;
    invoke-virtual {v10, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_93

    .line 1312
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    :cond_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    .line 1315
    .end local v5    # "ch":Ljava/lang/String;
    :cond_96
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->ignoreOnCardChange:Z
    invoke-static/range {v17 .. v18}, Lorg/telegram/ui/PaymentFormActivity;->access$2702(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const-string v18, "windowBackgroundWhiteBlackText"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1317
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_cb

    .line 1318
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1320
    :cond_cb
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_df

    .line 1321
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/PaymentFormActivity$12;->isYear:Z

    .line 1323
    :cond_df
    const/4 v8, 0x0

    .line 1324
    .local v8, "isError":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->isYear:Z

    move/from16 v17, v0

    if-eqz v17, :cond_21d

    .line 1325
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1eb

    const/16 v17, 0x2

    :goto_f6
    move/from16 v0, v17

    new-array v3, v0, [Ljava/lang/String;

    .line 1326
    .local v3, "args":[Ljava/lang/String;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v17

    .line 1327
    array-length v0, v3

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_121

    .line 1328
    const/16 v17, 0x1

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v17

    .line 1330
    :cond_121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1ef

    array-length v0, v3

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1ef

    .line 1331
    const/16 v17, 0x0

    aget-object v17, v3, v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1332
    .local v9, "month":I
    const/16 v17, 0x1

    aget-object v17, v3, v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v16, v0

    .line 1333
    .local v16, "year":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 1334
    .local v12, "rightNow":Ljava/util/Calendar;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1335
    .local v7, "currentYear":I
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    add-int/lit8 v6, v17, 0x1

    .line 1336
    .local v6, "currentMonth":I
    move/from16 v0, v16

    if-lt v0, v7, :cond_176

    move/from16 v0, v16

    if-ne v0, v7, :cond_18e

    if-ge v9, v6, :cond_18e

    .line 1337
    :cond_176
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const-string v18, "windowBackgroundWhiteRedText4"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1338
    const/4 v8, 0x1

    .line 1363
    .end local v3    # "args":[Ljava/lang/String;
    .end local v6    # "currentMonth":I
    .end local v7    # "currentYear":I
    .end local v9    # "month":I
    .end local v12    # "rightNow":Ljava/util/Calendar;
    .end local v16    # "year":I
    :cond_18e
    :goto_18e
    if-nez v8, :cond_1b9

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b9

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->need_card_name:Z
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$2800(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v17

    if-eqz v17, :cond_288

    const/16 v17, 0x2

    :goto_1b4
    aget-object v17, v18, v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->requestFocus()Z

    .line 1366
    :cond_1b9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_28c

    .line 1367
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1368
    add-int/lit8 v13, v13, 0x1

    .line 1374
    :cond_1ce
    :goto_1ce
    invoke-virtual {v11, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1375
    if-ltz v13, :cond_1de

    .line 1376
    invoke-virtual {v11}, Landroid/widget/EditText;->length()I

    move-result v17

    move/from16 v0, v17

    if-gt v13, v0, :cond_2b7

    .end local v13    # "start":I
    :goto_1db
    invoke-virtual {v11, v13}, Landroid/widget/EditText;->setSelection(I)V

    .line 1378
    :cond_1de
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    # setter for: Lorg/telegram/ui/PaymentFormActivity;->ignoreOnCardChange:Z
    invoke-static/range {v17 .. v18}, Lorg/telegram/ui/PaymentFormActivity;->access$2702(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    goto/16 :goto_c

    .line 1325
    .restart local v13    # "start":I
    :cond_1eb
    const/16 v17, 0x1

    goto/16 :goto_f6

    .line 1341
    .restart local v3    # "args":[Ljava/lang/String;
    :cond_1ef
    const/16 v17, 0x0

    aget-object v17, v3, v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1342
    .local v15, "value":I
    const/16 v17, 0xc

    move/from16 v0, v17

    if-gt v15, v0, :cond_203

    if-nez v15, :cond_18e

    .line 1343
    :cond_203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const-string v18, "windowBackgroundWhiteRedText4"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1344
    const/4 v8, 0x1

    goto/16 :goto_18e

    .line 1348
    .end local v3    # "args":[Ljava/lang/String;
    .end local v15    # "value":I
    :cond_21d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_24c

    .line 1349
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1350
    .restart local v15    # "value":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_18e

    if-eqz v15, :cond_18e

    .line 1351
    const/16 v17, 0x0

    const-string v18, "0"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_18e

    .line 1354
    .end local v15    # "value":I
    :cond_24c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_18e

    .line 1355
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1356
    .restart local v15    # "value":I
    const/16 v17, 0xc

    move/from16 v0, v17

    if-gt v15, v0, :cond_26c

    if-nez v15, :cond_284

    .line 1357
    :cond_26c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    move-object/from16 v17, v0

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v17

    const/16 v18, 0x1

    aget-object v17, v17, v18

    const-string v18, "windowBackgroundWhiteRedText4"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1358
    const/4 v8, 0x1

    .line 1360
    :cond_284
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_18e

    .line 1364
    .end local v15    # "value":I
    :cond_288
    const/16 v17, 0x3

    goto/16 :goto_1b4

    .line 1369
    :cond_28c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1ce

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v17

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1ce

    .line 1370
    const/16 v17, 0x2

    const/16 v18, 0x2f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1371
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1ce

    .line 1376
    :cond_2b7
    invoke-virtual {v11}, Landroid/widget/EditText;->length()I

    move-result v13

    goto/16 :goto_1db
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const/16 v4, 0x2f

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    .line 1274
    if-nez p3, :cond_21

    if-ne p4, v1, :cond_21

    .line 1275
    iget-object v2, p0, Lorg/telegram/ui/PaymentFormActivity$12;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->inputFields:[Landroid/widget/EditText;
    invoke-static {v2}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    if-eq v2, v3, :cond_1c

    move v0, v1

    :cond_1c
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->isYear:Z

    .line 1276
    iput v1, p0, Lorg/telegram/ui/PaymentFormActivity$12;->characterAction:I

    .line 1288
    :goto_20
    return-void

    .line 1277
    :cond_21
    if-ne p3, v1, :cond_3b

    if-nez p4, :cond_3b

    .line 1278
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_37

    if-lez p2, :cond_37

    .line 1279
    iput-boolean v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->isYear:Z

    .line 1280
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->characterAction:I

    .line 1281
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->actionPosition:I

    goto :goto_20

    .line 1283
    :cond_37
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/PaymentFormActivity$12;->characterAction:I

    goto :goto_20

    .line 1286
    :cond_3b
    iput v3, p0, Lorg/telegram/ui/PaymentFormActivity$12;->characterAction:I

    goto :goto_20
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1293
    return-void
.end method
