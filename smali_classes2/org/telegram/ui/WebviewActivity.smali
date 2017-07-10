.class public Lorg/telegram/ui/WebviewActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "WebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;
    }
.end annotation


# static fields
.field private static final open_in:I = 0x2

.field private static final share:I = 0x1


# instance fields
.field private currentBot:Ljava/lang/String;

.field private currentGame:Ljava/lang/String;

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private currentUrl:Ljava/lang/String;

.field private linkToCopy:Ljava/lang/String;

.field private progressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private progressView:Lorg/telegram/ui/Components/ContextProgressView;

.field private short_param:Ljava/lang/String;

.field public typingRunnable:Ljava/lang/Runnable;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .registers 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "botName"    # Ljava/lang/String;
    .param p3, "gameName"    # Ljava/lang/String;
    .param p4, "startParam"    # Ljava/lang/String;
    .param p5, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 104
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 92
    new-instance v0, Lorg/telegram/ui/WebviewActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/WebviewActivity$1;-><init>(Lorg/telegram/ui/WebviewActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/WebviewActivity;->typingRunnable:Ljava/lang/Runnable;

    .line 105
    iput-object p1, p0, Lorg/telegram/ui/WebviewActivity;->currentUrl:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lorg/telegram/ui/WebviewActivity;->currentBot:Ljava/lang/String;

    .line 107
    iput-object p3, p0, Lorg/telegram/ui/WebviewActivity;->currentGame:Ljava/lang/String;

    .line 108
    iput-object p5, p0, Lorg/telegram/ui/WebviewActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 109
    iput-object p4, p0, Lorg/telegram/ui/WebviewActivity;->short_param:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/WebviewActivity;->currentBot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, ""

    :goto_3d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/WebviewActivity;->linkToCopy:Ljava/lang/String;

    .line 111
    return-void

    .line 110
    :cond_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?game="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d
.end method

.method static synthetic access$000(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/messenger/MessageObject;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/WebviewActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/WebviewActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/WebviewActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->linkToCopy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/WebviewActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/WebviewActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->currentUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/WebviewActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/WebviewActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->short_param:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/WebviewActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/WebviewActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->currentBot:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/WebviewActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->progressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/ui/Components/ContextProgressView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/WebviewActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    return-object v0
.end method

.method public static openGameInBrowser(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 25
    .param p0, "urlStr"    # Ljava/lang/String;
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "parentActivity"    # Landroid/app/Activity;
    .param p3, "short_name"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;

    .prologue
    .line 239
    move-object/from16 v13, p0

    .line 240
    .local v13, "url":Ljava/lang/String;
    :try_start_2
    sget-object v14, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v15, "botshare"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 241
    .local v12, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 242
    .local v7, "existing":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    if-eqz v7, :cond_6c

    move-object v14, v7

    :goto_2d
    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .local v8, "hash":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tgShareScoreUrl="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "tgb://share_game_score?hash="

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    .local v2, "addHash":Ljava/lang/StringBuilder;
    if-nez v7, :cond_6f

    .line 245
    const-string v14, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v14}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 246
    .local v3, "chars":[C
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_59
    const/16 v14, 0x14

    if-ge v9, v14, :cond_6f

    .line 247
    sget-object v14, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    array-length v15, v3

    invoke-virtual {v14, v15}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v14

    aget-char v14, v3, v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    add-int/lit8 v9, v9, 0x1

    goto :goto_59

    .line 242
    .end local v2    # "addHash":Ljava/lang/StringBuilder;
    .end local v3    # "chars":[C
    .end local v8    # "hash":Ljava/lang/StringBuilder;
    .end local v9    # "i":I
    :cond_6c
    const-string v14, ""

    goto :goto_2d

    .line 250
    .restart local v2    # "addHash":Ljava/lang/StringBuilder;
    .restart local v8    # "hash":Ljava/lang/StringBuilder;
    :cond_6f
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 251
    const/16 v14, 0x23

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 252
    .local v10, "index":I
    if-gez v10, :cond_145

    .line 253
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "#"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 266
    :goto_91
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 267
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_date"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v15, v0

    invoke-interface {v6, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 268
    new-instance v11, Lorg/telegram/tgnet/SerializedData;

    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v14}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v14

    invoke-direct {v11, v14}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 269
    .local v11, "serializedData":Lorg/telegram/tgnet/SerializedData;
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v14, v11}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 270
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_m"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v15

    invoke-static {v15}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 271
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_link"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "https://"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1a6

    const-string v14, ""

    :goto_12e
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v15, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 272
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 277
    .end local v2    # "addHash":Ljava/lang/StringBuilder;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "existing":Ljava/lang/String;
    .end local v8    # "hash":Ljava/lang/StringBuilder;
    .end local v10    # "index":I
    .end local v11    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    .end local v12    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_144
    return-void

    .line 255
    .restart local v2    # "addHash":Ljava/lang/StringBuilder;
    .restart local v7    # "existing":Ljava/lang/String;
    .restart local v8    # "hash":Ljava/lang/StringBuilder;
    .restart local v10    # "index":I
    .restart local v12    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_145
    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "curHash":Ljava/lang/String;
    const/16 v14, 0x3d

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-gez v14, :cond_15b

    const/16 v14, 0x3f

    invoke-virtual {v4, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ltz v14, :cond_174

    .line 257
    :cond_15b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_91

    .line 259
    :cond_174
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_193

    .line 260
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_91

    .line 262
    :cond_193
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_91

    .line 271
    .end local v4    # "curHash":Ljava/lang/String;
    .restart local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v11    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :cond_1a6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "?game="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1bc} :catch_1bf

    move-result-object v14

    goto/16 :goto_12e

    .line 274
    .end local v2    # "addHash":Ljava/lang/StringBuilder;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "existing":Ljava/lang/String;
    .end local v8    # "hash":Ljava/lang/StringBuilder;
    .end local v10    # "index":I
    .end local v11    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    .end local v12    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_1bf
    move-exception v5

    .line 275
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_144
.end method

.method public static supportWebview()Z
    .registers 3

    .prologue
    .line 227
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 228
    .local v0, "manufacturer":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 229
    .local v1, "model":Ljava/lang/String;
    const-string v2, "samsung"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 230
    const-string v2, "GT-I9500"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 231
    const/4 v2, 0x0

    .line 234
    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x1

    goto :goto_15
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface"
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 135
    iput-boolean v8, p0, Lorg/telegram/ui/WebviewActivity;->swipeBackEnabled:Z

    .line 136
    iget-object v4, p0, Lorg/telegram/ui/WebviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v5, 0x7f0200dd

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 137
    iget-object v4, p0, Lorg/telegram/ui/WebviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 138
    iget-object v4, p0, Lorg/telegram/ui/WebviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v5, p0, Lorg/telegram/ui/WebviewActivity;->currentGame:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v4, p0, Lorg/telegram/ui/WebviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/WebviewActivity;->currentBot:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v4, p0, Lorg/telegram/ui/WebviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/WebviewActivity$2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/WebviewActivity$2;-><init>(Lorg/telegram/ui/WebviewActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 153
    iget-object v4, p0, Lorg/telegram/ui/WebviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    .line 154
    .local v2, "menu":Lorg/telegram/ui/ActionBar/ActionBarMenu;
    const v4, 0x7f02024e

    const/high16 v5, 0x42580000    # 54.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v2, v7, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/WebviewActivity;->progressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 155
    new-instance v4, Lorg/telegram/ui/Components/ContextProgressView;

    invoke-direct {v4, p1, v7}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    .line 156
    iget-object v4, p0, Lorg/telegram/ui/WebviewActivity;->progressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v5, p0, Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-static {v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v4, p0, Lorg/telegram/ui/WebviewActivity;->progressItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    const v4, 0x7f0200e7

    invoke-virtual {v2, v8, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    .line 160
    .local v3, "menuItem":Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    const/4 v4, 0x2

    const-string v5, "OpenInExternalApp"

    const v6, 0x7f0703e2

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    .line 162
    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    .line 163
    iget-object v4, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 164
    iget-object v4, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 166
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/WebviewActivity;->fragmentView:Landroid/view/View;

    .line 167
    iget-object v1, p0, Lorg/telegram/ui/WebviewActivity;->fragmentView:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    .line 169
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_cd

    .line 170
    iget-object v4, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 171
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 172
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    iget-object v4, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4, v7}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 173
    iget-object v4, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lorg/telegram/ui/WebviewActivity$TelegramWebviewProxy;-><init>(Lorg/telegram/ui/WebviewActivity;Lorg/telegram/ui/WebviewActivity$1;)V

    const-string v6, "TelegramWebviewProxy"

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .end local v0    # "cookieManager":Landroid/webkit/CookieManager;
    :cond_cd
    iget-object v4, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Lorg/telegram/ui/WebviewActivity$3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/WebviewActivity$3;-><init>(Lorg/telegram/ui/WebviewActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 207
    iget-object v4, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-static {v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v4, p0, Lorg/telegram/ui/WebviewActivity;->fragmentView:Landroid/view/View;

    return-object v4
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 281
    const/16 v0, 0x9

    new-array v8, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/WebviewActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v7, "windowBackgroundWhite"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v10

    const/4 v9, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/WebviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const-string v7, "actionBarDefault"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/WebviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v7, "actionBarDefaultIcon"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/WebviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v7, "actionBarDefaultTitle"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/WebviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v7, "actionBarDefaultSelector"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/WebviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const-string v7, "actionBarDefaultSubmenuBackground"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/WebviewActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const-string v7, "actionBarDefaultSubmenuItem"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/4 v9, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v7, "contextProgressInner2"

    move v2, v10

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    const/16 v9, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/WebviewActivity;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string v7, "contextProgressOuter2"

    move v2, v10

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v8, v9

    return-object v8
.end method

.method public onFragmentDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 116
    iget-object v2, p0, Lorg/telegram/ui/WebviewActivity;->typingRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 117
    iput-object v3, p0, Lorg/telegram/ui/WebviewActivity;->typingRunnable:Ljava/lang/Runnable;

    .line 119
    :try_start_b
    iget-object v2, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 120
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_1a

    .line 121
    check-cast v1, Landroid/widget/FrameLayout;

    .end local v1    # "parent":Landroid/view/ViewParent;
    iget-object v2, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 123
    :cond_1a
    iget-object v2, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->stopLoading()V

    .line 124
    iget-object v2, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    const-string v3, "about:blank"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    .line 126
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2e} :catch_2f

    .line 130
    :goto_2e
    return-void

    .line 127
    :catch_2f
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2e
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 214
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->typingRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 216
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->typingRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 217
    return-void
.end method

.method protected onTransitionAnimationEnd(ZZ)V
    .registers 5
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    .line 221
    if-eqz p1, :cond_f

    if-nez p2, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_f

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lorg/telegram/ui/WebviewActivity;->currentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 224
    :cond_f
    return-void
.end method
