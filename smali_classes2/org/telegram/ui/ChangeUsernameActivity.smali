.class public Lorg/telegram/ui/ChangeUsernameActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChangeUsernameActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChangeUsernameActivity$LinkMovementMethodMy;,
        Lorg/telegram/ui/ChangeUsernameActivity$LinkSpan;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private checkReqId:I

.field private checkRunnable:Ljava/lang/Runnable;

.field private checkTextView:Landroid/widget/TextView;

.field private doneButton:Landroid/view/View;

.field private firstNameField:Landroid/widget/EditText;

.field private helpTextView:Landroid/widget/TextView;

.field private ignoreCheck:Z

.field private infoText:Ljava/lang/CharSequence;

.field private lastCheckName:Ljava/lang/String;

.field private lastNameAvailable:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChangeUsernameActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->saveName()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->doneButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/ChangeUsernameActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->lastNameAvailable:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChangeUsernameActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 61
    iget-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->ignoreCheck:Z

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChangeUsernameActivity;->checkUserName(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->infoText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$802(Lorg/telegram/ui/ChangeUsernameActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkReqId:I

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/ChangeUsernameActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->lastCheckName:Ljava/lang/String;

    return-object v0
.end method

.method private checkUserName(Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "alert"    # Z

    .prologue
    const/16 v9, 0x39

    const/16 v8, 0x30

    const v7, 0x7f070568

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 248
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1f

    .line 249
    iget-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    :goto_16
    if-eqz p2, :cond_27

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_27

    .line 366
    :cond_1e
    :goto_1e
    return v3

    .line 251
    :cond_1f
    iget-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_16

    .line 256
    :cond_27
    iget-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_43

    .line 257
    iget-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkRunnable:Ljava/lang/Runnable;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 258
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 259
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->lastCheckName:Ljava/lang/String;

    .line 260
    iget v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkReqId:I

    if-eqz v5, :cond_43

    .line 261
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkReqId:I

    invoke-virtual {v5, v6, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 264
    :cond_43
    iput-boolean v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->lastNameAvailable:Z

    .line 265
    if-eqz p1, :cond_100

    .line 266
    const-string v5, "_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_57

    const-string v5, "_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 267
    :cond_57
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v5, "UsernameInvalid"

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v5, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 269
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v5, "windowBackgroundWhiteRedText4"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    move v3, v4

    .line 270
    goto :goto_1e

    .line 272
    :cond_76
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_100

    .line 273
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 274
    .local v1, "ch":C
    if-nez v0, :cond_b8

    if-lt v1, v8, :cond_b8

    if-gt v1, v9, :cond_b8

    .line 275
    if-eqz p2, :cond_97

    .line 276
    const-string v3, "UsernameInvalidStartNumber"

    const v5, 0x7f07056b

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    :goto_95
    move v3, v4

    .line 282
    goto :goto_1e

    .line 278
    :cond_97
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v5, "UsernameInvalidStartNumber"

    const v6, 0x7f07056b

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v5, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 280
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v5, "windowBackgroundWhiteRedText4"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_95

    .line 284
    :cond_b8
    if-lt v1, v8, :cond_bc

    if-le v1, v9, :cond_fc

    :cond_bc
    const/16 v5, 0x61

    if-lt v1, v5, :cond_c4

    const/16 v5, 0x7a

    if-le v1, v5, :cond_fc

    :cond_c4
    const/16 v5, 0x41

    if-lt v1, v5, :cond_cc

    const/16 v5, 0x5a

    if-le v1, v5, :cond_fc

    :cond_cc
    const/16 v5, 0x5f

    if-eq v1, v5, :cond_fc

    .line 285
    if-eqz p2, :cond_de

    .line 286
    const-string v3, "UsernameInvalid"

    invoke-static {v3, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    :goto_db
    move v3, v4

    .line 292
    goto/16 :goto_1e

    .line 288
    :cond_de
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v5, "UsernameInvalid"

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v5, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 290
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v5, "windowBackgroundWhiteRedText4"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_db

    .line 272
    :cond_fc
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_77

    .line 296
    .end local v0    # "a":I
    .end local v1    # "ch":C
    :cond_100
    if-eqz p1, :cond_109

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_13b

    .line 297
    :cond_109
    if-eqz p2, :cond_11a

    .line 298
    const-string v3, "UsernameInvalidShort"

    const v5, 0x7f07056a

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    :goto_117
    move v3, v4

    .line 304
    goto/16 :goto_1e

    .line 300
    :cond_11a
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v5, "UsernameInvalidShort"

    const v6, 0x7f07056a

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v5, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 302
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v5, "windowBackgroundWhiteRedText4"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_117

    .line 306
    :cond_13b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-le v5, v6, :cond_175

    .line 307
    if-eqz p2, :cond_154

    .line 308
    const-string v3, "UsernameInvalidLong"

    const v5, 0x7f070569

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    :goto_151
    move v3, v4

    .line 314
    goto/16 :goto_1e

    .line 310
    :cond_154
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v5, "UsernameInvalidLong"

    const v6, 0x7f070569

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v5, "windowBackgroundWhiteRedText4"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 312
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v5, "windowBackgroundWhiteRedText4"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_151

    .line 317
    :cond_175
    if-nez p2, :cond_1e

    .line 318
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 319
    .local v2, "currentName":Ljava/lang/String;
    if-nez v2, :cond_181

    .line 320
    const-string v2, ""

    .line 322
    :cond_181
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ad

    .line 323
    iget-object v5, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v6, "UsernameAvailable"

    const v7, 0x7f070562

    new-array v8, v3, [Ljava/lang/Object;

    aput-object p1, v8, v4

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v5, "windowBackgroundWhiteGreenText"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 325
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v5, "windowBackgroundWhiteGreenText"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1e

    .line 329
    :cond_1ad
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v5, "UsernameChecking"

    const v6, 0x7f070563

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v5, "windowBackgroundWhiteGrayText8"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 331
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const-string v5, "windowBackgroundWhiteGrayText8"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 332
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->lastCheckName:Ljava/lang/String;

    .line 333
    new-instance v4, Lorg/telegram/ui/ChangeUsernameActivity$5;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity$5;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 364
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_1e
.end method

.method private saveName()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 370
    iget-object v6, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v9}, Lorg/telegram/ui/ChangeUsernameActivity;->checkUserName(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_13

    .line 446
    :cond_12
    :goto_12
    return-void

    .line 373
    :cond_13
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    .line 374
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_12

    if-eqz v5, :cond_12

    .line 377
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 378
    .local v0, "currentName":Ljava/lang/String;
    if-nez v0, :cond_25

    .line 379
    const-string v0, ""

    .line 381
    :cond_25
    iget-object v6, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "newName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 383
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->finishFragment()V

    goto :goto_12

    .line 387
    :cond_39
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6, v9}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 388
    .local v2, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    const-string v6, "Loading"

    const v7, 0x7f0702eb

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 389
    invoke-virtual {v2, v10}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 390
    invoke-virtual {v2, v10}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 392
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;-><init>()V

    .line 393
    .local v3, "req":Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;
    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;->username:Ljava/lang/String;

    .line 395
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 396
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/ChangeUsernameActivity$6;

    invoke-direct {v7, p0, v2, v3}, Lorg/telegram/ui/ChangeUsernameActivity$6;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;)V

    const/4 v8, 0x2

    invoke-virtual {v6, v3, v7, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v4

    .line 432
    .local v4, "reqId":I
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/ChangeUsernameActivity;->classGuid:I

    invoke-virtual {v6, v4, v7}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    .line 434
    const/4 v6, -0x2

    const-string v7, "Cancel"

    const v8, 0x7f0700fe

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/ChangeUsernameActivity$7;

    invoke-direct {v8, p0, v4}, Lorg/telegram/ui/ChangeUsernameActivity$7;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;I)V

    invoke-virtual {v2, v6, v7, v8}, Lorg/telegram/ui/ActionBar/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 445
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto/16 :goto_12
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 124
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "Username"

    const v2, 0x7f070561

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangeUsernameActivity$1;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v8

    .line 137
    .local v8, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v0, 0x1

    const v1, 0x7f020114

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->doneButton:Landroid/view/View;

    .line 139
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    .line 140
    .local v9, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v9, :cond_52

    .line 141
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    .line 144
    :cond_52
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->fragmentView:Landroid/view/View;

    .line 145
    iget-object v7, p0, Lorg/telegram/ui/ChangeUsernameActivity;->fragmentView:Landroid/view/View;

    check-cast v7, Landroid/widget/LinearLayout;

    .line 146
    .local v7, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->fragmentView:Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangeUsernameActivity$2;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 154
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 156
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 160
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 163
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1d7

    const/4 v0, 0x5

    :goto_bc
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const v1, 0x2c000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const-string v1, "UsernamePlaceholder"

    const v2, 0x7f07056c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangeUsernameActivity$3;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChangeUsernameActivity$4;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 207
    iget-object v6, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/16 v1, 0x24

    const/high16 v2, 0x41c00000    # 24.0f

    const/high16 v3, 0x41c00000    # 24.0f

    const/high16 v4, 0x41c00000    # 24.0f

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 211
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1da

    const/4 v0, 0x5

    :goto_11d
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 212
    iget-object v10, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1dd

    const/4 v2, 0x5

    :goto_129
    const/16 v3, 0x18

    const/16 v4, 0xc

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText8"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1e0

    const/4 v0, 0x5

    :goto_158
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 218
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    const-string v1, "UsernameHelp"

    const v2, 0x7f070565

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->infoText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteLinkText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 220
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteLinkSelection"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 221
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/ChangeUsernameActivity$LinkMovementMethodMy;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/ChangeUsernameActivity$LinkMovementMethodMy;-><init>(Lorg/telegram/ui/ChangeUsernameActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 222
    iget-object v10, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_1e3

    const/4 v2, 0x5

    :goto_199
    const/16 v3, 0x18

    const/16 v4, 0xa

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    if-eqz v9, :cond_1d4

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v0, :cond_1d4

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d4

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->ignoreCheck:Z

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    iget-object v1, v9, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->ignoreCheck:Z

    .line 233
    :cond_1d4
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 163
    :cond_1d7
    const/4 v0, 0x3

    goto/16 :goto_bc

    .line 211
    :cond_1da
    const/4 v0, 0x3

    goto/16 :goto_11d

    .line 212
    :cond_1dd
    const/4 v2, 0x3

    goto/16 :goto_129

    .line 217
    :cond_1e0
    const/4 v0, 0x3

    goto/16 :goto_158

    .line 222
    :cond_1e3
    const/4 v2, 0x3

    goto :goto_199
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 458
    const/16 v0, 0xd

    new-array v8, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v9, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v7, "windowBackgroundWhite"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v7, "actionBarDefault"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v7, "actionBarDefaultIcon"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v7, "actionBarDefaultTitle"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v7, "actionBarDefaultSelector"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v7, "windowBackgroundWhiteBlackText"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const-string v7, "windowBackgroundWhiteHintText"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-string v7, "windowBackgroundWhiteInputField"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v4

    const-string v7, "windowBackgroundWhiteInputFieldActivated"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v7, "windowBackgroundWhiteGrayText8"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v4

    const-string v7, "windowBackgroundWhiteRedText4"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v4

    const-string v7, "windowBackgroundWhiteGreenText"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v4

    const-string v7, "windowBackgroundWhiteGrayText8"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    return-object v8
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 238
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 239
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 240
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "view_animations"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 241
    .local v0, "animations":Z
    if-nez v0, :cond_1f

    .line 242
    iget-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 243
    iget-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 245
    :cond_1f
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .registers 4
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 450
    if-eqz p1, :cond_c

    .line 451
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 452
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->firstNameField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 454
    :cond_c
    return-void
.end method
