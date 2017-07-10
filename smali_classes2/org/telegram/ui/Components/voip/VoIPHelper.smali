.class public Lorg/telegram/ui/Components/voip/VoIPHelper;
.super Ljava/lang/Object;
.source "VoIPHelper.java"


# static fields
.field private static lastCallRequestTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/telegram/ui/Components/voip/VoIPHelper;->lastCallRequestTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 23
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/voip/VoIPHelper;->doInitiateCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;)V

    return-void
.end method

.method private static doInitiateCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;)V
    .registers 9
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x1

    .line 102
    if-eqz p1, :cond_5

    if-nez p0, :cond_6

    .line 113
    :cond_5
    :goto_5
    return-void

    .line 105
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lorg/telegram/ui/Components/voip/VoIPHelper;->lastCallRequestTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-ltz v1, :cond_5

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lorg/telegram/ui/Components/voip/VoIPHelper;->lastCallRequestTime:J

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/telegram/messenger/voip/VoIPService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "user_id"

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string v1, "is_outgoing"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    const-string v1, "start_incall_activity"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 112
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_5
.end method

.method private static initiateCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;)V
    .registers 10
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    if-eqz p1, :cond_4

    if-nez p0, :cond_5

    .line 99
    :cond_4
    :goto_4
    return-void

    .line 68
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 69
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 70
    .local v0, "callUser":Lorg/telegram/tgnet/TLRPC$User;
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-eq v1, v2, :cond_79

    .line 71
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "VoipOngoingAlertTitle"

    const v3, 0x7f070591

    .line 72
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "VoipOngoingAlert"

    const v3, 0x7f070590

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 74
    invoke-static {v6, v7}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 75
    invoke-static {v6, v7}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 73
    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    const v3, 0x7f0703d4

    .line 76
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/voip/VoIPHelper$2;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/voip/VoIPHelper$2;-><init>(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancel"

    const v3, 0x7f0700fe

    .line 91
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_4

    .line 94
    :cond_79
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/telegram/ui/VoIPActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 96
    .end local v0    # "callUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_8b
    sget-object v1, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    if-nez v1, :cond_4

    .line 97
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/voip/VoIPHelper;->doInitiateCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;)V

    goto/16 :goto_4
.end method

.method public static permissionDenied(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "onFinish"    # Ljava/lang/Runnable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 117
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 118
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "AppName"

    const v3, 0x7f070092

    .line 119
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "VoipNeedMicPermission"

    const v3, 0x7f070589

    .line 120
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    const v3, 0x7f0703d4

    .line 121
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Settings"

    const v3, 0x7f0704fb

    .line 122
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/voip/VoIPHelper$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/voip/VoIPHelper$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 132
    .local v0, "dlg":Lorg/telegram/ui/ActionBar/AlertDialog;
    new-instance v1, Lorg/telegram/ui/Components/voip/VoIPHelper$4;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/voip/VoIPHelper$4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 140
    .end local v0    # "dlg":Lorg/telegram/ui/ActionBar/AlertDialog;
    :cond_53
    return-void
.end method

.method public static startCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_userFull;)V
    .registers 15
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userFull"    # Lorg/telegram/tgnet/TLRPC$TL_userFull;

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f0703d4

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 28
    if-eqz p2, :cond_49

    iget-boolean v4, p2, Lorg/telegram/tgnet/TLRPC$TL_userFull;->phone_calls_private:Z

    if-eqz v4, :cond_49

    .line 29
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v4, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "VoipFailed"

    const v6, 0x7f070583

    .line 30
    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "CallNotAvailable"

    const v6, 0x7f0700f7

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v9, p0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 32
    invoke-static {v8, v9}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 31
    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "OK"

    .line 33
    invoke-static {v4, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v3

    .line 34
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 62
    :goto_48
    return-void

    .line 37
    :cond_49
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_cb

    .line 38
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_b5

    .line 39
    .local v1, "isAirplaneMode":Z
    :goto_60
    new-instance v4, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v4, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_b7

    const-string v3, "VoipOfflineAirplaneTitle"

    const v5, 0x7f07058d

    .line 40
    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_70
    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v4

    if-eqz v1, :cond_c1

    const-string v3, "VoipOfflineAirplane"

    const v5, 0x7f07058c

    .line 41
    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_7f
    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "OK"

    .line 42
    invoke-static {v4, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 43
    .local v0, "bldr":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    if-eqz v1, :cond_b1

    .line 44
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v2, "settingsIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_b1

    .line 46
    const-string v3, "VoipOfflineOpenSettings"

    const v4, 0x7f07058e

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/voip/VoIPHelper$1;

    invoke-direct {v4, p1, v2}, Lorg/telegram/ui/Components/voip/VoIPHelper$1;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 54
    .end local v2    # "settingsIntent":Landroid/content/Intent;
    :cond_b1
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_48

    .end local v0    # "bldr":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v1    # "isAirplaneMode":Z
    :cond_b5
    move v1, v3

    .line 38
    goto :goto_60

    .line 40
    .restart local v1    # "isAirplaneMode":Z
    :cond_b7
    const-string v3, "VoipOfflineTitle"

    const v5, 0x7f07058f

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_70

    .line 41
    :cond_c1
    const-string v3, "VoipOffline"

    const v5, 0x7f07058b

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_7f

    .line 57
    .end local v1    # "isAirplaneMode":Z
    :cond_cb
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_e6

    const-string v4, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_e6

    .line 58
    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "android.permission.RECORD_AUDIO"

    aput-object v5, v4, v3

    const/16 v3, 0x65

    invoke-virtual {p1, v4, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto/16 :goto_48

    .line 60
    :cond_e6
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/voip/VoIPHelper;->initiateCall(Lorg/telegram/tgnet/TLRPC$User;Landroid/app/Activity;)V

    goto/16 :goto_48
.end method
