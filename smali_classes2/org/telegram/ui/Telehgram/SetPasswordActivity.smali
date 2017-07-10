.class public Lorg/telegram/ui/Telehgram/SetPasswordActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SetPasswordActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;
    }
.end annotation


# static fields
.field private static final change_Pass:I = 0x3

.field private static final disable_hidden:I = 0x2

.field private static final done_button:I = 0x1

.field private static final enable_hidden:I = 0x1

.field private static final unlock_dialogs:I = 0x4


# instance fields
.field private changeenablePasscodeRow:I

.field private enablePasscodeRow:I

.field private firstPassword:Ljava/lang/String;

.field private hiddenInShareAlertDesRow:I

.field private hiddenInShareAlertRow:I

.field private listAdapter:Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;

.field private listView:Landroid/widget/ListView;

.field private passcodeDetailRow:I

.field private passcodeSetStep:I

.field private passwordEditText:Landroid/widget/EditText;

.field private rowCount:I

.field private showHiddenNotifDesRow:I

.field private showHiddenNotifRow:I

.field private titleTextView:Landroid/widget/TextView;

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passcodeSetStep:I

    .line 79
    iput p1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->type:I

    .line 80
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    .prologue
    .line 50
    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->type:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->restartApp()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    .prologue
    .line 50
    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    .prologue
    .line 50
    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passcodeDetailRow:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    .prologue
    .line 50
    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->hiddenInShareAlertDesRow:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    .prologue
    .line 50
    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->showHiddenNotifDesRow:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    .prologue
    .line 50
    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passcodeSetStep:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->processNext()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->processDone()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    .prologue
    .line 50
    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->changeenablePasscodeRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    .prologue
    .line 50
    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->enablePasscodeRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    .prologue
    .line 50
    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->hiddenInShareAlertRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    .prologue
    .line 50
    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->showHiddenNotifRow:I

    return v0
.end method

.method private onPasscodeError()V
    .registers 5

    .prologue
    .line 481
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_7

    .line 489
    :goto_6
    return-void

    .line 484
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 485
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_1a

    .line 486
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 488
    :cond_1a
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto :goto_6
.end method

.method private processDone()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 392
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    if-nez v7, :cond_12

    .line 393
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->onPasscodeError()V

    .line 463
    :cond_11
    :goto_11
    return-void

    .line 396
    :cond_12
    iget v7, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->type:I

    if-ne v7, v6, :cond_7c

    .line 397
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->firstPassword:Ljava/lang/String;

    iget-object v8, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_53

    .line 399
    :try_start_28
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "PasscodeDoNotMatch"

    const v8, 0x7f0703fd

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3d} :catch_4c

    .line 403
    :goto_3d
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7, v5}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    .line 404
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 400
    :catch_4c
    move-exception v2

    .line 401
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "tmessages"

    invoke-static {v6, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 408
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_53
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v8, "mainconfig"

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 409
    .local v4, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 410
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "chat_password"

    iget-object v7, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->firstPassword:Ljava/lang/String;

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 411
    const-string v5, "chat_unlocked"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 412
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 414
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->restartApp()V

    .line 415
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->clearFocus()V

    .line 416
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_11

    .line 417
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_7c
    iget v7, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_ca

    .line 418
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "mainconfig"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 419
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    const-string v5, "chat_password"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "chatPassword":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ad

    .line 421
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 422
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->onPasscodeError()V

    goto/16 :goto_11

    .line 426
    :cond_ad
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 427
    .restart local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "chat_password"

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 428
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 430
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->clearFocus()V

    .line 431
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 432
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->restartApp()V

    goto/16 :goto_11

    .line 433
    .end local v0    # "chatPassword":Ljava/lang/String;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_ca
    iget v7, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_10f

    .line 434
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v8, "mainconfig"

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 435
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    const-string v5, "chat_password"

    const-string v7, ""

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .restart local v0    # "chatPassword":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_fb

    .line 437
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->onPasscodeError()V

    goto/16 :goto_11

    .line 441
    :cond_fb
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->clearFocus()V

    .line 442
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 443
    new-instance v5, Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;-><init>(I)V

    invoke-virtual {p0, v5, v6}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto/16 :goto_11

    .line 444
    .end local v0    # "chatPassword":Ljava/lang/String;
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_10f
    iget v7, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->type:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_11

    .line 445
    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v8, "mainconfig"

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 446
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    const-string v7, "chat_password"

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .restart local v0    # "chatPassword":Ljava/lang/String;
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_140

    .line 448
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 449
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->onPasscodeError()V

    goto/16 :goto_11

    .line 453
    :cond_140
    const-string v7, "chat_unlocked"

    invoke-interface {v4, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 454
    .local v1, "chatUnlocked":Z
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 455
    .restart local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "chat_unlocked"

    if-nez v1, :cond_14f

    move v5, v6

    :cond_14f
    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 456
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 458
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->clearFocus()V

    .line 459
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 460
    new-instance v5, Lorg/telegram/ui/DialogsActivity;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5, v6}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 461
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->restartApp()V

    goto/16 :goto_11
.end method

.method private processNext()V
    .registers 4

    .prologue
    .line 380
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_10

    .line 381
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->onPasscodeError()V

    .line 389
    :goto_f
    return-void

    .line 385
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->titleTextView:Landroid/widget/TextView;

    const-string v1, "ReEnterYourPasscode"

    const v2, 0x7f070475

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->firstPassword:Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 388
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passcodeSetStep:I

    goto :goto_f
.end method

.method private restartApp()V
    .registers 11

    .prologue
    const/high16 v6, 0x10000000

    .line 466
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 467
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 468
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x4000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 469
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 470
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_2a

    .line 471
    const v4, 0x8000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 474
    :cond_2a
    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 475
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 476
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-virtual {v0, v4, v6, v7, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 477
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 478
    return-void
.end method

.method private updateRows()V
    .registers 3

    .prologue
    .line 347
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->rowCount:I

    .line 348
    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->enablePasscodeRow:I

    .line 349
    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->changeenablePasscodeRow:I

    .line 350
    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passcodeDetailRow:I

    .line 351
    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->hiddenInShareAlertRow:I

    .line 352
    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->hiddenInShareAlertDesRow:I

    .line 353
    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->showHiddenNotifRow:I

    .line 354
    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->showHiddenNotifDesRow:I

    .line 355
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, -0x2

    const/high16 v11, 0x42200000    # 40.0f

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 96
    iget v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->type:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_13

    .line 97
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v6, 0x7f0200dd

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 99
    :cond_13
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 100
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v6, Lorg/telegram/ui/Telehgram/SetPasswordActivity$1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity$1;-><init>(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 120
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->fragmentView:Landroid/view/View;

    .line 121
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->fragmentView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    .line 123
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    iget v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->type:I

    if-eqz v5, :cond_1b8

    .line 124
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v3

    .line 125
    .local v3, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v5, 0x7f020114

    const/high16 v6, 0x42600000    # 56.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v3, v8, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 127
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->titleTextView:Landroid/widget/TextView;

    .line 128
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->titleTextView:Landroid/widget/TextView;

    const v6, -0x8a8a8b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->type:I

    if-ne v5, v8, :cond_184

    .line 130
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v6, "mainconfig"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 131
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string v5, "chat_password"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "chatPassword":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_174

    .line 133
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->titleTextView:Landroid/widget/TextView;

    const-string v6, "EnterNewPasscode"

    const v7, 0x7f07020d

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    .end local v0    # "chatPassword":Ljava/lang/String;
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :goto_7a
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->titleTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v5, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 141
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 142
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->titleTextView:Landroid/widget/TextView;

    const-string v6, "fonts/rmedium.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 143
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 144
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 145
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 146
    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 147
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 148
    const/high16 v5, 0x42180000    # 38.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 149
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    .line 152
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v5, v8, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 153
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 154
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 155
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setLines(I)V

    .line 156
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 157
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setGravity(I)V

    .line 158
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 159
    iget v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->type:I

    if-ne v5, v8, :cond_194

    .line 160
    iput v9, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passcodeSetStep:I

    .line 161
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 166
    :goto_ec
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 167
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 168
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 169
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 170
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 171
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 172
    const/high16 v5, 0x42100000    # 36.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 173
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 174
    const/16 v5, 0x33

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 175
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 176
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 177
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    new-instance v6, Lorg/telegram/ui/Telehgram/SetPasswordActivity$2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity$2;-><init>(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 191
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    new-instance v6, Lorg/telegram/ui/Telehgram/SetPasswordActivity$3;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity$3;-><init>(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 217
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_19e

    .line 218
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    new-instance v6, Lorg/telegram/ui/Telehgram/SetPasswordActivity$4;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity$4;-><init>(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 242
    :goto_159
    iget v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->type:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_163

    iget v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->type:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1a9

    .line 243
    :cond_163
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v6, "Authentication"

    const v7, 0x7f070659

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 304
    .end local v3    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :goto_171
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->fragmentView:Landroid/view/View;

    return-object v5

    .line 135
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v0    # "chatPassword":Ljava/lang/String;
    .restart local v3    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_174
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->titleTextView:Landroid/widget/TextView;

    const-string v6, "EnterNewFirstPasscode"

    const v7, 0x7f07020c

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7a

    .line 138
    .end local v0    # "chatPassword":Ljava/lang/String;
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_184
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->titleTextView:Landroid/widget/TextView;

    const-string v6, "EnterCurrentPasscode"

    const v7, 0x7f070209

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7a

    .line 163
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_194
    iput v8, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passcodeSetStep:I

    .line 164
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_ec

    .line 224
    :cond_19e
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    new-instance v6, Lorg/telegram/ui/Telehgram/SetPasswordActivity$5;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity$5;-><init>(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    goto :goto_159

    .line 245
    :cond_1a9
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v6, "SetPass"

    const v7, 0x7f0707b6

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_171

    .line 249
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    :cond_1b8
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v6, "HideChats"

    const v7, 0x7f070735

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 250
    const v5, -0xf0f10

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 251
    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->listView:Landroid/widget/ListView;

    .line 252
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->listView:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 253
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 254
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 255
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 256
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 257
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 258
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 259
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 260
    const/16 v5, 0x30

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 261
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->listView:Landroid/widget/ListView;

    new-instance v6, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;

    invoke-direct {v6, p0, p1}, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;-><init>(Lorg/telegram/ui/Telehgram/SetPasswordActivity;Landroid/content/Context;)V

    iput-object v6, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->listAdapter:Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 263
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->listView:Landroid/widget/ListView;

    new-instance v6, Lorg/telegram/ui/Telehgram/SetPasswordActivity$6;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity$6;-><init>(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_171
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 336
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didSetPasscode:I

    if-ne p1, v0, :cond_14

    .line 337
    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->type:I

    if-nez v0, :cond_14

    .line 338
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->updateRows()V

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->listAdapter:Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;

    if-eqz v0, :cond_14

    .line 340
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->listAdapter:Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->notifyDataSetChanged()V

    .line 344
    :cond_14
    return-void
.end method

.method public onBackPressed()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 328
    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    .line 329
    new-instance v0, Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 331
    :cond_f
    return v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 359
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 360
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->listView:Landroid/widget/ListView;

    if-eqz v1, :cond_15

    .line 361
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 362
    .local v0, "obs":Landroid/view/ViewTreeObserver;
    new-instance v1, Lorg/telegram/ui/Telehgram/SetPasswordActivity$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity$8;-><init>(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 370
    .end local v0    # "obs":Landroid/view/ViewTreeObserver;
    :cond_15
    return-void
.end method

.method public onFragmentCreate()Z
    .registers 2

    .prologue
    .line 84
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 85
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->updateRows()V

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .registers 1

    .prologue
    .line 91
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 92
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 309
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->listAdapter:Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;

    if-eqz v0, :cond_c

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->listAdapter:Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity$ListAdapter;->notifyDataSetChanged()V

    .line 313
    :cond_c
    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->type:I

    if-eqz v0, :cond_1a

    .line 314
    new-instance v0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Telehgram/SetPasswordActivity$7;-><init>(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 324
    :cond_1a
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .registers 4
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 374
    if-eqz p1, :cond_b

    iget v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->type:I

    if-eqz v0, :cond_b

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->passwordEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 377
    :cond_b
    return-void
.end method
