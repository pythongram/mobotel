.class public Lorg/telegram/ui/PasscodeActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PasscodeActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PasscodeActivity$ListAdapter;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1

.field private static final password_item:I = 0x3

.field private static final pin_item:I = 0x2


# instance fields
.field private autoLockDetailRow:I

.field private autoLockRow:I

.field private captureDetailRow:I

.field private captureRow:I

.field private changePasscodeRow:I

.field private currentPasswordType:I

.field private dropDown:Landroid/widget/TextView;

.field private dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private dropDownDrawable:Landroid/graphics/drawable/Drawable;

.field private fingerprintRow:I

.field private firstPassword:Ljava/lang/String;

.field private listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private passcodeDetailRow:I

.field private passcodeRow:I

.field private passcodeSetStep:I

.field private passwordEditText:Landroid/widget/EditText;

.field private rowCount:I

.field private titleTextView:Landroid/widget/TextView;

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 78
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    .line 79
    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    .line 98
    iput p1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    .line 99
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PasscodeActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 67
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PasscodeActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processNext()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PasscodeActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 67
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/PasscodeActivity$ListAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PasscodeActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 67
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PasscodeActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 67
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PasscodeActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->fixLayoutInternal()V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PasscodeActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 67
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PasscodeActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 67
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeDetailRow:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PasscodeActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 67
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PasscodeActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 67
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->captureDetailRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PasscodeActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->processDone()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/PasscodeActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 67
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/PasscodeActivity;I)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/PasscodeActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateDropDownTextView()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PasscodeActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 67
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PasscodeActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 67
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PasscodeActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/PasscodeActivity;

    .prologue
    .line 67
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeRow:I

    return v0
.end method

.method private fixLayoutInternal()V
    .registers 4

    .prologue
    .line 579
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_3d

    .line 580
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_21

    .line 581
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 582
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3e

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_1a
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 583
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_21
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_40

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_40

    .line 586
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 591
    :cond_3d
    :goto_3d
    return-void

    .line 582
    .restart local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3e
    const/4 v1, 0x0

    goto :goto_1a

    .line 588
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_40
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3d
.end method

.method private onPasscodeError()V
    .registers 5

    .prologue
    .line 568
    invoke-virtual {p0}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_7

    .line 576
    :goto_6
    return-void

    .line 571
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 572
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_1a

    .line 573
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 575
    :cond_1a
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto :goto_6
.end method

.method private processDone()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 520
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_12

    .line 521
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    .line 565
    :cond_11
    :goto_11
    return-void

    .line 524
    :cond_12
    iget v3, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v3, v5, :cond_b8

    .line 525
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->firstPassword:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 527
    :try_start_28
    invoke-virtual {p0}, Lorg/telegram/ui/PasscodeActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "PasscodeDoNotMatch"

    const v5, 0x7f0703fd

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3d} :catch_4c

    .line 531
    :goto_3d
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4, v7}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    .line 532
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 528
    :catch_4c
    move-exception v1

    .line 529
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 537
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_51
    const/16 v3, 0x10

    :try_start_53
    new-array v3, v3, [B

    sput-object v3, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    .line 538
    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    sget-object v4, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 539
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->firstPassword:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 540
    .local v2, "passcodeBytes":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0x20

    new-array v0, v3, [B

    .line 541
    .local v0, "bytes":[B
    sget-object v3, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    const/4 v3, 0x0

    const/16 v4, 0x10

    array-length v5, v2

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 543
    sget-object v3, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v4, 0x0

    array-length v5, v2

    add-int/lit8 v5, v5, 0x10

    const/16 v6, 0x10

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_92} :catch_b3

    .line 549
    .end local v0    # "bytes":[B
    .end local v2    # "passcodeBytes":[B
    :goto_92
    iget v3, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    sput v3, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    .line 550
    invoke-static {v7}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 551
    invoke-virtual {p0}, Lorg/telegram/ui/PasscodeActivity;->finishFragment()V

    .line 552
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 553
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 554
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto/16 :goto_11

    .line 545
    :catch_b3
    move-exception v1

    .line 546
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_92

    .line 555
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_b8
    iget v3, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_11

    .line 556
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->checkPasscode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d9

    .line 557
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 558
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    goto/16 :goto_11

    .line 561
    :cond_d9
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    .line 562
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 563
    new-instance v3, Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {v3, v7}, Lorg/telegram/ui/PasscodeActivity;-><init>(I)V

    invoke-virtual {p0, v3, v5}, Lorg/telegram/ui/PasscodeActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_11
.end method

.method private processNext()V
    .registers 4

    .prologue
    .line 503
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-nez v0, :cond_21

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    .line 504
    :cond_1d
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->onPasscodeError()V

    .line 517
    :goto_20
    return-void

    .line 507
    :cond_21
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-nez v0, :cond_5f

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "PasscodePIN"

    const v2, 0x7f0703fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 512
    :goto_33
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const-string v1, "ReEnterYourPasscode"

    const v2, 0x7f070475

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->firstPassword:Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 516
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    goto :goto_20

    .line 510
    :cond_5f
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "PasscodePassword"

    const v2, 0x7f0703ff

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_33
.end method

.method private updateDropDownTextView()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 481
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    if-eqz v1, :cond_19

    .line 482
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-nez v1, :cond_53

    .line 483
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const-string v2, "PasscodePIN"

    const v3, 0x7f0703fe

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    :cond_19
    :goto_19
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v1, v4, :cond_21

    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-eqz v1, :cond_29

    :cond_21
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v1, v6, :cond_66

    sget v1, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    if-nez v1, :cond_66

    .line 489
    :cond_29
    new-array v0, v4, [Landroid/text/InputFilter;

    .line 490
    .local v0, "filterArray":[Landroid/text/InputFilter;
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v5

    .line 491
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 492
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 493
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const-string v2, "1234567890"

    invoke-static {v2}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 499
    .end local v0    # "filterArray":[Landroid/text/InputFilter;
    :cond_49
    :goto_49
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 500
    return-void

    .line 484
    :cond_53
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-ne v1, v4, :cond_19

    .line 485
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const-string v2, "PasscodePassword"

    const v3, 0x7f0703ff

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 494
    :cond_66
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v1, v4, :cond_6e

    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->currentPasswordType:I

    if-eq v1, v4, :cond_76

    :cond_6e
    iget v1, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-ne v1, v6, :cond_49

    sget v1, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    if-ne v1, v4, :cond_49

    .line 495
    :cond_76
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    new-array v2, v5, [Landroid/text/InputFilter;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 496
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 497
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_49
.end method

.method private updateRows()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 429
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    .line 430
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeRow:I

    .line 431
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I

    .line 432
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeDetailRow:I

    .line 433
    sget-object v2, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_64

    .line 435
    :try_start_24
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3e

    .line 436
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;

    move-result-object v1

    .line 437
    .local v1, "fingerprintManager":Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;
    invoke-virtual {v1}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 438
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_3e} :catch_5f

    .line 444
    .end local v1    # "fingerprintManager":Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat;
    :cond_3e
    :goto_3e
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    .line 445
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I

    .line 446
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    .line 447
    iget v2, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/PasscodeActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/PasscodeActivity;->captureDetailRow:I

    .line 455
    :goto_5e
    return-void

    .line 441
    :catch_5f
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3e

    .line 449
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_64
    iput v4, p0, Lorg/telegram/ui/PasscodeActivity;->captureRow:I

    .line 450
    iput v4, p0, Lorg/telegram/ui/PasscodeActivity;->captureDetailRow:I

    .line 451
    iput v4, p0, Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I

    .line 452
    iput v4, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I

    .line 453
    iput v4, p0, Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I

    goto :goto_5e
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 124
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$1;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 146
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->fragmentView:Landroid/view/View;

    .line 147
    iget-object v7, p0, Lorg/telegram/ui/PasscodeActivity;->fragmentView:Landroid/view/View;

    check-cast v7, Landroid/widget/FrameLayout;

    .line 149
    .local v7, "frameLayout":Landroid/widget/FrameLayout;
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eqz v0, :cond_257

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v8

    .line 151
    .local v8, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v0, 0x1

    const v1, 0x7f020114

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 153
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_229

    .line 156
    sget-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_219

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const-string v1, "EnterNewPasscode"

    const v2, 0x7f07020d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :goto_6c
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 166
    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x42180000    # 38.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    .line 169
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 171
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 176
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_239

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 183
    :goto_d6
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 186
    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/high16 v1, 0x42100000    # 36.0f

    const/16 v2, 0x33

    const/high16 v3, 0x42200000    # 40.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x42200000    # 40.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$2;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 200
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$3;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$4;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 244
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_248

    .line 245
    const-string v0, "windowBackgroundWhite"

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 246
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v8, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x2

    const-string v2, "PasscodePIN"

    const v3, 0x7f0703fe

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 249
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x3

    const-string v2, "PasscodePassword"

    const v3, 0x7f0703ff

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 250
    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v10, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v0, -0x2

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_244

    const/high16 v3, 0x42800000    # 64.0f

    :goto_166
    const/4 v4, 0x0

    const/high16 v5, 0x42200000    # 40.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$5;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 262
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const-string v1, "actionBarDefaultTitle"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 266
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    .line 267
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "actionBarDefaultTitle"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 271
    iget-object v9, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v10, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x10

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    :goto_213
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateDropDownTextView()V

    .line 393
    .end local v8    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :goto_216
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 159
    .restart local v8    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_219
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const-string v1, "EnterNewFirstPasscode"

    const v2, 0x7f07020c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6c

    .line 162
    :cond_229
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    const-string v1, "EnterCurrentPasscode"

    const v2, 0x7f070209

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6c

    .line 180
    :cond_239
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/PasscodeActivity;->passcodeSetStep:I

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_d6

    .line 250
    :cond_244
    const/high16 v3, 0x42600000    # 56.0f

    goto/16 :goto_166

    .line 273
    :cond_248
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "Passcode"

    const v2, 0x7f0703fc

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_213

    .line 278
    .end local v8    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_257
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "Passcode"

    const v2, 0x7f0703fc

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 279
    const-string v0, "windowBackgroundGray"

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 280
    const-string v0, "windowBackgroundGray"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 281
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$6;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lorg/telegram/ui/PasscodeActivity$6;-><init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PasscodeActivity$ListAdapter;-><init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/PasscodeActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$7;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    goto/16 :goto_216
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 418
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    if-ne p1, v0, :cond_14

    .line 419
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-nez v0, :cond_14

    .line 420
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateRows()V

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    if-eqz v0, :cond_14

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->notifyDataSetChanged()V

    .line 426
    :cond_14
    return-void
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 12

    .prologue
    .line 710
    const/16 v0, 0x1c

    new-array v9, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSubmenuBackground"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSubmenuItem"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->titleTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xe

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteInputField"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0xf

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x10

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v8, 0x11

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->dropDown:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/ui/PasscodeActivity;->dropDownDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0x12

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x13

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "switchThumb"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x14

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "switchTrack"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x15

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "switchThumbChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x16

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "switchTrackChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x17

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x18

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText7"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v10, 0x19

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "valueTextView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteValueText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    const/16 v8, 0x1a

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    const/16 v10, 0x1b

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText4"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v10

    return-object v9
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 459
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 460
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_15

    .line 461
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 462
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    new-instance v1, Lorg/telegram/ui/PasscodeActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PasscodeActivity$9;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 471
    .end local v0    # "obs":Landroid/view/ViewTreeObserver;
    :cond_15
    return-void
.end method

.method public onFragmentCreate()Z
    .registers 3

    .prologue
    .line 103
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 104
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->updateRows()V

    .line 105
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-nez v0, :cond_13

    .line 106
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 108
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .registers 3

    .prologue
    .line 113
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 114
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-nez v0, :cond_10

    .line 115
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 117
    :cond_10
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 398
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    if-eqz v0, :cond_c

    .line 400
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->listAdapter:Lorg/telegram/ui/PasscodeActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->notifyDataSetChanged()V

    .line 402
    :cond_c
    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eqz v0, :cond_1a

    .line 403
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$8;-><init>(Lorg/telegram/ui/PasscodeActivity;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 413
    :cond_1a
    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity;->fixLayoutInternal()V

    .line 414
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .registers 4
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 475
    if-eqz p1, :cond_b

    iget v0, p0, Lorg/telegram/ui/PasscodeActivity;->type:I

    if-eqz v0, :cond_b

    .line 476
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 478
    :cond_b
    return-void
.end method
