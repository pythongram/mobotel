.class public Lorg/telegram/ui/LoginActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "LoginActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HardwareIds"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;,
        Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;,
        Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;,
        Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;,
        Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;,
        Lorg/telegram/ui/LoginActivity$PhoneView;,
        Lorg/telegram/ui/LoginActivity$ProgressView;
    }
.end annotation


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private checkPermissions:Z

.field private checkShowPermissions:Z

.field private currentViewNum:I

.field private doneButton:Landroid/view/View;

.field private permissionsDialog:Landroid/app/Dialog;

.field private permissionsItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private permissionsShowDialog:Landroid/app/Dialog;

.field private permissionsShowItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private views:[Lorg/telegram/ui/Components/SlideView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 91
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 94
    const/16 v0, 0x9

    new-array v0, v0, [Lorg/telegram/ui/Components/SlideView;

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    .line 100
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    .line 101
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/LoginActivity;)[Lorg/telegram/ui/Components/SlideView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/LoginActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity;

    .prologue
    .line 91
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/LoginActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity;

    .prologue
    .line 91
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->permissionsDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/LoginActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity;

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->needShowProgress()V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->needShowInvalidAlert(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/LoginActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity;

    .prologue
    .line 91
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lorg/telegram/ui/LoginActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity;

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->needFinishActivity()V

    return-void
.end method

.method private clearCurrentState()V
    .registers 6

    .prologue
    .line 301
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "logininfo2"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 302
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 303
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 304
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    return-void
.end method

.method private fillNextCodeParams(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;)V
    .registers 10
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "res"    # Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 537
    const-string v0, "phoneHash"

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->phone_code_hash:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->next_type:Lorg/telegram/tgnet/TLRPC$auth_CodeType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeCall;

    if-eqz v0, :cond_2f

    .line 539
    const-string v0, "nextType"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 545
    :cond_17
    :goto_17
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeApp;

    if-eqz v0, :cond_47

    .line 546
    const-string v0, "type"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 547
    const-string v0, "length"

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 548
    invoke-virtual {p0, v2, v2, p1, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 568
    :cond_2e
    :goto_2e
    return-void

    .line 540
    :cond_2f
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->next_type:Lorg/telegram/tgnet/TLRPC$auth_CodeType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeFlashCall;

    if-eqz v0, :cond_3b

    .line 541
    const-string v0, "nextType"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_17

    .line 542
    :cond_3b
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->next_type:Lorg/telegram/tgnet/TLRPC$auth_CodeType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_codeTypeSms;

    if-eqz v0, :cond_17

    .line 543
    const-string v0, "nextType"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_17

    .line 550
    :cond_47
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->timeout:I

    if-nez v0, :cond_4f

    .line 551
    const/16 v0, 0x3c

    iput v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->timeout:I

    .line 553
    :cond_4f
    const-string v0, "timeout"

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->timeout:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 554
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeCall;

    if-eqz v0, :cond_70

    .line 555
    const-string v0, "type"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 556
    const-string v0, "length"

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 557
    invoke-virtual {p0, v6, v2, p1, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2e

    .line 558
    :cond_70
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeFlashCall;

    if-eqz v0, :cond_88

    .line 559
    const-string v0, "type"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 560
    const-string v0, "pattern"

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->pattern:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0, v5, v2, p1, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2e

    .line 562
    :cond_88
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeSms;

    if-eqz v0, :cond_2e

    .line 563
    const-string v0, "type"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 564
    const-string v0, "length"

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->length:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 565
    invoke-virtual {p0, v4, v2, p1, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2e
.end method

.method private loadCurrentState()Landroid/os/Bundle;
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 267
    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 268
    .local v1, "bundle":Landroid/os/Bundle;
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v10, "logininfo2"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 269
    .local v7, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    .line 270
    .local v6, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1b
    :goto_1b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_49

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 271
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 272
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 273
    .local v8, "value":Ljava/lang/Object;
    const-string v10, "_\\|_"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "args":[Ljava/lang/String;
    array-length v10, v0

    if-ne v10, v12, :cond_58

    .line 275
    instance-of v10, v8, Ljava/lang/String;

    if-eqz v10, :cond_4a

    .line 276
    check-cast v8, Ljava/lang/String;

    .end local v8    # "value":Ljava/lang/Object;
    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_43} :catch_44

    goto :goto_1b

    .line 294
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v7    # "preferences":Landroid/content/SharedPreferences;
    :catch_44
    move-exception v2

    .line 295
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 297
    const/4 v1, 0x0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_49
    return-object v1

    .line 277
    .restart local v0    # "args":[Ljava/lang/String;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v7    # "preferences":Landroid/content/SharedPreferences;
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_4a
    :try_start_4a
    instance-of v10, v8, Ljava/lang/Integer;

    if-eqz v10, :cond_1b

    .line 278
    check-cast v8, Ljava/lang/Integer;

    .end local v8    # "value":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1b

    .line 280
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_58
    array-length v10, v0

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1b

    .line 281
    const/4 v10, 0x0

    aget-object v10, v0, v10

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 282
    .local v4, "inner":Landroid/os/Bundle;
    if-nez v4, :cond_70

    .line 283
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "inner":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 284
    .restart local v4    # "inner":Landroid/os/Bundle;
    const/4 v10, 0x0

    aget-object v10, v0, v10

    invoke-virtual {v1, v10, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 286
    :cond_70
    instance-of v10, v8, Ljava/lang/String;

    if-eqz v10, :cond_7d

    .line 287
    const/4 v10, 0x1

    aget-object v10, v0, v10

    check-cast v8, Ljava/lang/String;

    .end local v8    # "value":Ljava/lang/Object;
    invoke-virtual {v4, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 288
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_7d
    instance-of v10, v8, Ljava/lang/Integer;

    if-eqz v10, :cond_1b

    .line 289
    const/4 v10, 0x1

    aget-object v10, v0, v10

    check-cast v8, Ljava/lang/Integer;

    .end local v8    # "value":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_8d} :catch_44

    goto :goto_1b
.end method

.method private needFinishActivity()V
    .registers 4

    .prologue
    .line 531
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    .line 532
    new-instance v0, Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/LoginActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 533
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 534
    return-void
.end method

.method private needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 369
    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_9

    .line 377
    :cond_8
    :goto_8
    return-void

    .line 372
    :cond_9
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 373
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 374
    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 375
    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 376
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/LoginActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_8
.end method

.method private needShowInvalidAlert(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "banned"    # Z

    .prologue
    .line 380
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_7

    .line 415
    :goto_6
    return-void

    .line 383
    :cond_7
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 384
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "AppName"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 385
    if-eqz p2, :cond_50

    .line 386
    const-string v1, "BannedPhoneNumber"

    const v2, 0x7f0700d1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 390
    :goto_2a
    const-string v1, "BotHelp"

    const v2, 0x7f0700db

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$2;

    invoke-direct {v2, p0, p2, p1}, Lorg/telegram/ui/LoginActivity$2;-><init>(Lorg/telegram/ui/LoginActivity;ZLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 413
    const-string v1, "OK"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 414
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/LoginActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_6

    .line 388
    :cond_50
    const-string v1, "InvalidPhoneNumber"

    const v2, 0x7f07029c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_2a
.end method

.method private needShowProgress()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 418
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_16

    .line 426
    :cond_15
    :goto_15
    return-void

    .line 421
    :cond_16
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const-string v1, "Loading"

    const v2, 0x7f0702eb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 425
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto :goto_15
.end method

.method private putBundleToEditor(Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .registers 10
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 309
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 310
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 311
    .local v2, "obj":Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_41

    .line 312
    if-eqz p3, :cond_3b

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_|_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v2, Ljava/lang/String;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-interface {p2, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_8

    .line 315
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_3b
    check-cast v2, Ljava/lang/String;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_8

    .line 317
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_41
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_72

    .line 318
    if-eqz p3, :cond_68

    .line 319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_|_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_8

    .line 321
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_68
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_8

    .line 323
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_72
    instance-of v4, v2, Landroid/os/Bundle;

    if-eqz v4, :cond_8

    .line 324
    check-cast v2, Landroid/os/Bundle;

    .end local v2    # "obj":Ljava/lang/Object;
    invoke-direct {p0, v2, p2, v0}, Lorg/telegram/ui/LoginActivity;->putBundleToEditor(Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_8

    .line 327
    .end local v0    # "key":Ljava/lang/String;
    :cond_7c
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v1, "AppName"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/LoginActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$1;-><init>(Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v9

    .line 165
    .local v9, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const/4 v0, 0x1

    const v1, 0x7f020114

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->doneButton:Landroid/view/View;

    .line 167
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity;->fragmentView:Landroid/view/View;

    .line 168
    iget-object v11, p0, Lorg/telegram/ui/LoginActivity;->fragmentView:Landroid/view/View;

    check-cast v11, Landroid/widget/ScrollView;

    .line 169
    .local v11, "scrollView":Landroid/widget/ScrollView;
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 171
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 172
    .local v8, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v0, -0x1

    const/4 v1, -0x2

    const/16 v2, 0x33

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v8, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x0

    new-instance v2, Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v2, v0, v1

    .line 176
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x2

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/4 v3, 0x2

    invoke-direct {v2, p0, p1, v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v2, v0, v1

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x3

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/4 v3, 0x3

    invoke-direct {v2, p0, p1, v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v2, v0, v1

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x4

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    const/4 v3, 0x4

    invoke-direct {v2, p0, p1, v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V

    aput-object v2, v0, v1

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x5

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x6

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v1, 0x7

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/16 v1, 0x8

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 184
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_ad
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v0, v0

    if-ge v7, v0, :cond_f0

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v1, v0, v7

    if-nez v7, :cond_e4

    const/4 v0, 0x0

    :goto_b9
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/SlideView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v13, v0, v7

    const/4 v0, -0x1

    if-nez v7, :cond_e7

    const/high16 v1, -0x40000000    # -2.0f

    :goto_c5
    const/16 v2, 0x33

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_ea

    const/high16 v3, 0x41d00000    # 26.0f

    :goto_cf
    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_ed

    const/high16 v5, 0x41d00000    # 26.0f

    :goto_d9
    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v13, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    add-int/lit8 v7, v7, 0x1

    goto :goto_ad

    .line 185
    :cond_e4
    const/16 v0, 0x8

    goto :goto_b9

    .line 186
    :cond_e7
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_c5

    :cond_ea
    const/high16 v3, 0x41900000    # 18.0f

    goto :goto_cf

    :cond_ed
    const/high16 v5, 0x41900000    # 18.0f

    goto :goto_d9

    .line 189
    :cond_f0
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->loadCurrentState()Landroid/os/Bundle;

    move-result-object v10

    .line 190
    .local v10, "savedInstanceState":Landroid/os/Bundle;
    if-eqz v10, :cond_12c

    .line 191
    const-string v0, "currentViewNum"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 192
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_12c

    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_12c

    .line 193
    const-string v0, "open"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 194
    .local v12, "time":I
    if-eqz v12, :cond_12c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    int-to-long v2, v12

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12c

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 196
    const/4 v10, 0x0

    .line 197
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    .line 201
    .end local v12    # "time":I
    :cond_12c
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v2, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SlideView;->getHeaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    const/4 v7, 0x0

    :goto_13c
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v0, v0

    if-ge v7, v0, :cond_19e

    .line 203
    if-eqz v10, :cond_154

    .line 204
    const/4 v0, 0x1

    if-lt v7, v0, :cond_18a

    const/4 v0, 0x4

    if-gt v7, v0, :cond_18a

    .line 205
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-ne v7, v0, :cond_154

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v0, v7

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/SlideView;->restoreStateParams(Landroid/os/Bundle;)V

    .line 212
    :cond_154
    :goto_154
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-ne v0, v7, :cond_194

    .line 213
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->needBackButton()Z

    move-result v0

    if-eqz v0, :cond_192

    const v0, 0x7f0200dd

    :goto_167
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v0, v7

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SlideView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 216
    const/4 v0, 0x3

    if-eq v7, v0, :cond_180

    const/16 v0, 0x8

    if-ne v7, v0, :cond_187

    .line 217
    :cond_180
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->doneButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :cond_187
    :goto_187
    add-int/lit8 v7, v7, 0x1

    goto :goto_13c

    .line 209
    :cond_18a
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v0, v7

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/SlideView;->restoreStateParams(Landroid/os/Bundle;)V

    goto :goto_154

    .line 213
    :cond_192
    const/4 v0, 0x0

    goto :goto_167

    .line 220
    :cond_194
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v0, v7

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SlideView;->setVisibility(I)V

    goto :goto_187

    .line 224
    :cond_19e
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 22

    .prologue
    .line 2877
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v2, 0x0

    aget-object v11, v1, v2

    check-cast v11, Lorg/telegram/ui/LoginActivity$PhoneView;

    .line 2878
    .local v11, "phoneView":Lorg/telegram/ui/LoginActivity$PhoneView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v2, 0x1

    aget-object v14, v1, v2

    check-cast v14, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .line 2879
    .local v14, "smsView1":Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v2, 0x2

    aget-object v15, v1, v2

    check-cast v15, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .line 2880
    .local v15, "smsView2":Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v2, 0x3

    aget-object v16, v1, v2

    check-cast v16, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .line 2881
    .local v16, "smsView3":Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v2, 0x4

    aget-object v17, v1, v2

    check-cast v17, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    .line 2882
    .local v17, "smsView4":Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v2, 0x5

    aget-object v13, v1, v2

    check-cast v13, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    .line 2883
    .local v13, "registerView":Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v2, 0x6

    aget-object v10, v1, v2

    check-cast v10, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    .line 2884
    .local v10, "passwordView":Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/4 v2, 0x7

    aget-object v12, v1, v2

    check-cast v12, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;

    .line 2885
    .local v12, "recoverView":Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    const/16 v2, 0x8

    aget-object v18, v1, v2

    check-cast v18, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;

    .line 2887
    .local v18, "waitView":Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;
    const/16 v1, 0x56

    new-array v0, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    move-object/from16 v19, v0

    const/4 v9, 0x0

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->fragmentView:Landroid/view/View;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhite"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/4 v9, 0x1

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "actionBarDefault"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/4 v9, 0x2

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->fragmentView:Landroid/view/View;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "actionBarDefault"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/4 v9, 0x3

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "actionBarDefaultIcon"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/4 v9, 0x4

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "actionBarDefaultTitle"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/4 v9, 0x5

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "actionBarDefaultSelector"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/4 v9, 0x6

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2896
    # getter for: Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;
    invoke-static {v11}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$700(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/4 v9, 0x7

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2897
    # getter for: Lorg/telegram/ui/LoginActivity$PhoneView;->view:Landroid/view/View;
    invoke-static {v11}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$7000(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/view/View;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayLine"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x8

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2898
    # getter for: Lorg/telegram/ui/LoginActivity$PhoneView;->textView:Landroid/widget/TextView;
    invoke-static {v11}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$7100(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x9

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2899
    # getter for: Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;
    invoke-static {v11}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$600(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0xa

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2900
    # getter for: Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;
    invoke-static {v11}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$600(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteInputField"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0xb

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2901
    # getter for: Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;
    invoke-static {v11}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$600(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0xc

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2902
    # getter for: Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v11}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$400(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0xd

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2903
    # getter for: Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v11}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$400(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteHintText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0xe

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2904
    # getter for: Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v11}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$400(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteInputField"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0xf

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2905
    # getter for: Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;
    invoke-static {v11}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$400(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x10

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2906
    # getter for: Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;
    invoke-static {v11}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$7200(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x11

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2908
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->confirmTextView:Landroid/widget/TextView;
    invoke-static {v10}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$7300(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x12

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2909
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;
    invoke-static {v10}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5300(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x13

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2910
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;
    invoke-static {v10}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5300(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteHintText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x14

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2911
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;
    invoke-static {v10}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5300(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteInputField"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x15

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2912
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;
    invoke-static {v10}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5300(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x16

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2913
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->cancelButton:Landroid/widget/TextView;
    invoke-static {v10}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$7400(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlueText4"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x17

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2914
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountButton:Landroid/widget/TextView;
    invoke-static {v10}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5200(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteRedText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x18

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2915
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountText:Landroid/widget/TextView;
    invoke-static {v10}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->access$5100(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x19

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2917
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->textView:Landroid/widget/TextView;
    invoke-static {v13}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$7500(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x1a

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2918
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;
    invoke-static {v13}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$7600(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteHintText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x1b

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2919
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;
    invoke-static {v13}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$7600(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x1c

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2920
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;
    invoke-static {v13}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$7600(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteInputField"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x1d

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2921
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->firstNameField:Landroid/widget/EditText;
    invoke-static {v13}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$7600(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x1e

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2922
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;
    invoke-static {v13}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$6800(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteHintText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x1f

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2923
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;
    invoke-static {v13}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$6800(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x20

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2924
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;
    invoke-static {v13}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$6800(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteInputField"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x21

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2925
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->lastNameField:Landroid/widget/EditText;
    invoke-static {v13}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$6800(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x22

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2926
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->wrongNumber:Landroid/widget/TextView;
    invoke-static {v13}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$7700(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlueText4"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x23

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2928
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->confirmTextView:Landroid/widget/TextView;
    invoke-static {v12}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->access$7800(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x24

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2929
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;
    invoke-static {v12}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->access$7900(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x25

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2930
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;
    invoke-static {v12}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->access$7900(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteHintText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x26

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2931
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;
    invoke-static {v12}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->access$7900(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteInputField"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x27

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2932
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeField:Landroid/widget/EditText;
    invoke-static {v12}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->access$7900(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x28

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2933
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->cancelButton:Landroid/widget/TextView;
    invoke-static {v12}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->access$8000(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlueText4"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x29

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2935
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->confirmTextView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->access$8100(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x2a

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2936
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountText:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->access$8200(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x2b

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2937
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountTime:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->access$8300(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x2c

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2938
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountButton:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->access$8400(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x2d

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2939
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->resetAccountButton:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;->access$8400(Lorg/telegram/ui/LoginActivity$LoginActivityResetWaitView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteRedText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x2e

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2941
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;
    invoke-static {v14}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$8500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x2f

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2942
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;
    invoke-static {v14}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x30

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2943
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;
    invoke-static {v14}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteHintText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x31

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2944
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;
    invoke-static {v14}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteInputField"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x32

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2945
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;
    invoke-static {v14}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x33

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2946
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;
    invoke-static {v14}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x34

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2947
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;
    invoke-static {v14}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlueText4"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x35

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2948
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;
    invoke-static {v14}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$8600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlueText4"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v20, 0x36

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2949
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;
    invoke-static {v14}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$ProgressView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/telegram/ui/LoginActivity$ProgressView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "paint"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "login_progressInner"

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v20

    const/16 v20, 0x37

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2950
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;
    invoke-static {v14}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$ProgressView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/telegram/ui/LoginActivity$ProgressView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "paint"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "login_progressOuter"

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v20

    const/16 v9, 0x38

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2952
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;
    invoke-static {v15}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$8500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x39

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2953
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;
    invoke-static {v15}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x3a

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2954
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;
    invoke-static {v15}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteHintText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x3b

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2955
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;
    invoke-static {v15}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteInputField"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x3c

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2956
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;
    invoke-static {v15}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x3d

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2957
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;
    invoke-static {v15}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x3e

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2958
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;
    invoke-static {v15}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlueText4"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x3f

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2959
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;
    invoke-static {v15}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$8600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlueText4"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v20, 0x40

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2960
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;
    invoke-static {v15}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$ProgressView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/telegram/ui/LoginActivity$ProgressView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "paint"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "login_progressInner"

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v20

    const/16 v20, 0x41

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2961
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;
    invoke-static {v15}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$ProgressView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/telegram/ui/LoginActivity$ProgressView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "paint"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "login_progressOuter"

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v20

    const/16 v9, 0x42

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2963
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$8500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x43

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2964
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x44

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2965
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteHintText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x45

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2966
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteInputField"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x46

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2967
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x47

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2968
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x48

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2969
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlueText4"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x49

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2970
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$8600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlueText4"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v20, 0x4a

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2971
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$ProgressView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/telegram/ui/LoginActivity$ProgressView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "paint"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "login_progressInner"

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v20

    const/16 v20, 0x4b

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2972
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$ProgressView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/telegram/ui/LoginActivity$ProgressView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "paint"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "login_progressOuter"

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v20

    const/16 v9, 0x4c

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2974
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$8500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x4d

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2975
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x4e

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2976
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteHintText"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x4f

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2977
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteInputField"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x50

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2978
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeField:Landroid/widget/EditText;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$2600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/EditText;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteInputFieldActivated"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x51

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2979
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteGrayText6"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x52

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2980
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$3600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlueText4"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v9, 0x53

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2981
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongNumber:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$8600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "windowBackgroundWhiteBlueText4"

    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v9

    const/16 v20, 0x54

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2982
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$ProgressView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/telegram/ui/LoginActivity$ProgressView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "paint"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "login_progressInner"

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v20

    const/16 v20, 0x55

    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2983
    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$4200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$ProgressView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/telegram/ui/LoginActivity$ProgressView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "paint"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "login_progressOuter"

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v1, v19, v20

    .line 2887
    return-object v19
.end method

.method public needHideProgress()V
    .registers 3

    .prologue
    .line 429
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-nez v1, :cond_5

    .line 438
    :goto_4
    return-void

    .line 433
    :cond_5
    :try_start_5
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_e

    .line 437
    :goto_a
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_4

    .line 434
    :catch_e
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method public onBackPressed()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x6

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 350
    iget v3, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-nez v3, :cond_22

    .line 351
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_9
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    .line 352
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1b

    .line 353
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    .line 351
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 356
    :cond_1e
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity;->clearCurrentState()V

    .line 365
    .end local v0    # "a":I
    :goto_21
    return v1

    .line 358
    :cond_22
    iget v3, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-ne v3, v5, :cond_34

    .line 359
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v4, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SlideView;->onBackPressed()V

    .line 360
    invoke-virtual {p0, v2, v1, v6, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    :cond_32
    :goto_32
    move v1, v2

    .line 365
    goto :goto_21

    .line 361
    :cond_34
    iget v3, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_3f

    iget v3, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_32

    .line 362
    :cond_3f
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v4, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SlideView;->onBackPressed()V

    .line 363
    invoke-virtual {p0, v5, v1, v6, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_32
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .registers 5
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 331
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_30

    .line 332
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_31

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 334
    :try_start_18
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_30} :catch_5e

    .line 346
    :cond_30
    :goto_30
    return-void

    .line 338
    :cond_31
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_30

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 340
    :try_start_43
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_5b} :catch_5c

    goto :goto_30

    .line 341
    :catch_5c
    move-exception v0

    goto :goto_30

    .line 335
    :catch_5e
    move-exception v0

    goto :goto_30
.end method

.method public onFragmentDestroy()V
    .registers 4

    .prologue
    .line 133
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 134
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    .line 135
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_16

    .line 136
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    .line 134
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 139
    :cond_19
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v2, :cond_25

    .line 141
    :try_start_1d
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_26

    .line 145
    :goto_22
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/LoginActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 147
    :cond_25
    return-void

    .line 142
    :catch_26
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_22
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 229
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 230
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->removeAdjustResize(Landroid/app/Activity;I)V

    .line 231
    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v1, 0x0

    .line 252
    const/4 v0, 0x6

    if-ne p1, v0, :cond_14

    .line 253
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    .line 254
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-nez v0, :cond_13

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->onNextPressed()V

    .line 263
    :cond_13
    :goto_13
    return-void

    .line 257
    :cond_14
    const/4 v0, 0x7

    if-ne p1, v0, :cond_13

    .line 258
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    .line 259
    iget v0, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-nez v0, :cond_13

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-virtual {v0}, Lorg/telegram/ui/LoginActivity$PhoneView;->fillNumber()V

    goto :goto_13
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 235
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 236
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/LoginActivity;->classGuid:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 238
    :try_start_d
    iget v2, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-lt v2, v4, :cond_52

    iget v2, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    const/4 v3, 0x4

    if-gt v2, v3, :cond_52

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v3, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v2, v2, v3

    instance-of v2, v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    if-eqz v2, :cond_52

    .line 239
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v3, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v2, v2, v3

    check-cast v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I
    invoke-static {v2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->access$200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I

    move-result v1

    .line 240
    .local v1, "time":I
    if-eqz v1, :cond_52

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x15180

    cmp-long v2, v2, v4

    if-ltz v2, :cond_52

    .line 241
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v3, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed()V

    .line 242
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_52} :catch_53

    .line 248
    .end local v1    # "time":I
    :cond_52
    :goto_52
    return-void

    .line 245
    :catch_53
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_52
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 512
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 513
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "currentViewNum"

    iget v7, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 514
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_d
    iget v6, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    if-gt v0, v6, :cond_1d

    .line 515
    iget-object v6, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v5, v6, v0

    .line 516
    .local v5, "v":Lorg/telegram/ui/Components/SlideView;
    if-eqz v5, :cond_1a

    .line 517
    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/SlideView;->saveStateParams(Landroid/os/Bundle;)V

    .line 514
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 520
    .end local v5    # "v":Lorg/telegram/ui/Components/SlideView;
    :cond_1d
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "logininfo2"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 521
    .local v4, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 522
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 523
    const/4 v6, 0x0

    invoke-direct {p0, v1, v3, v6}, Lorg/telegram/ui/LoginActivity;->putBundleToEditor(Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 524
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    .line 528
    .end local v0    # "a":I
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :goto_34
    return-void

    .line 525
    :catch_35
    move-exception v2

    .line 526
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_34
.end method

.method public setPage(IZLandroid/os/Bundle;Z)V
    .registers 15
    .param p1, "page"    # I
    .param p2, "animated"    # Z
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "back"    # Z

    .prologue
    const-wide/16 v8, 0x12c

    const v2, 0x7f0200dd

    const/4 v5, 0x1

    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 441
    const/4 v4, 0x3

    if-eq p1, v4, :cond_e

    if-ne p1, v6, :cond_91

    .line 442
    :cond_e
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 450
    :goto_13
    if-eqz p2, :cond_ad

    .line 451
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v5, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v1, v4, v5

    .line 452
    .local v1, "outView":Lorg/telegram/ui/Components/SlideView;
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v0, v4, p1

    .line 453
    .local v0, "newView":Lorg/telegram/ui/Components/SlideView;
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 454
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->needBackButton()Z

    move-result v5

    if-eqz v5, :cond_9e

    :goto_29
    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 456
    invoke-virtual {v0, p3, v3}, Lorg/telegram/ui/Components/SlideView;->setParams(Landroid/os/Bundle;Z)V

    .line 457
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->getHeaderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 458
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 459
    if-eqz p4, :cond_a0

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    int-to-float v2, v2

    :goto_43
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SlideView;->setX(F)V

    .line 460
    invoke-virtual {v1}, Lorg/telegram/ui/Components/SlideView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$3;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/LoginActivity$3;-><init>(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/Components/SlideView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 479
    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz p4, :cond_a6

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    :goto_67
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 480
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SlideView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$4;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/LoginActivity$4;-><init>(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/Components/SlideView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 497
    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 507
    .end local v0    # "newView":Lorg/telegram/ui/Components/SlideView;
    .end local v1    # "outView":Lorg/telegram/ui/Components/SlideView;
    :goto_90
    return-void

    .line 444
    :cond_91
    if-nez p1, :cond_97

    .line 445
    iput-boolean v5, p0, Lorg/telegram/ui/LoginActivity;->checkPermissions:Z

    .line 446
    iput-boolean v5, p0, Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z

    .line 448
    :cond_97
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->doneButton:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_13

    .restart local v0    # "newView":Lorg/telegram/ui/Components/SlideView;
    .restart local v1    # "outView":Lorg/telegram/ui/Components/SlideView;
    :cond_9e
    move v2, v3

    .line 454
    goto :goto_29

    .line 459
    :cond_a0
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    goto :goto_43

    .line 479
    :cond_a6
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    int-to-float v2, v2

    goto :goto_67

    .line 499
    .end local v0    # "newView":Lorg/telegram/ui/Components/SlideView;
    .end local v1    # "outView":Lorg/telegram/ui/Components/SlideView;
    :cond_ad
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SlideView;->needBackButton()Z

    move-result v5

    if-eqz v5, :cond_ea

    :goto_b9
    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 500
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    iget v4, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    aget-object v2, v2, v4

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/SlideView;->setVisibility(I)V

    .line 501
    iput p1, p0, Lorg/telegram/ui/LoginActivity;->currentViewNum:I

    .line 502
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v2, v2, p1

    invoke-virtual {v2, p3, v3}, Lorg/telegram/ui/Components/SlideView;->setParams(Landroid/os/Bundle;Z)V

    .line 503
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v2, v2, p1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SlideView;->setVisibility(I)V

    .line 504
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SlideView;->getHeaderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity;->views:[Lorg/telegram/ui/Components/SlideView;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    goto :goto_90

    :cond_ea
    move v2, v3

    .line 499
    goto :goto_b9
.end method
