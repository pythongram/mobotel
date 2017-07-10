.class public Lorg/telegram/ui/Telehgram/FavEmojisActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "FavEmojisActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Telehgram/FavEmojisActivity$TouchHelperCallback;,
        Lorg/telegram/ui/Telehgram/FavEmojisActivity$StickerImageView;,
        Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;,
        Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;
    }
.end annotation


# instance fields
.field private clearRow:I

.field private emojisList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private emptyRow:I

.field private endRow:I

.field private endSeparatorRow:I

.field private infoRow:I

.field private isSticker:Z

.field private listAdapter:Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private needReorder:Z

.field private rowCount:I

.field private startRow:I

.field private startSeparatorRow:I

.field private stickersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emojisList:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->stickersList:Ljava/util/ArrayList;

    .line 268
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    .prologue
    .line 51
    iget-boolean v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->isSticker:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->endSeparatorRow:I

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Telehgram/FavEmojisActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->needReorder:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listAdapter:Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->sendReorder()V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Telehgram/FavEmojisActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->updateRows(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->startRow:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->stickersList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->endRow:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emojisList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->infoRow:I

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emptyRow:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->clearRow:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)I
    .registers 2
    .param p0, "x0"    # Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    .prologue
    .line 51
    iget v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->startSeparatorRow:I

    return v0
.end method

.method private sendReorder()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 388
    iget-boolean v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->needReorder:Z

    if-eqz v3, :cond_55

    .line 389
    iput-boolean v6, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->needReorder:Z

    .line 393
    iget-boolean v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->isSticker:Z

    if-eqz v3, :cond_56

    .line 394
    const-string v3, "emoji"

    invoke-static {v3, v6}, Lorg/telegram/messenger/AndroidUtilities;->getUserPrefs(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 395
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1b
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->stickersList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3e

    .line 397
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_2e

    .line 398
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_2e
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->stickersList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 402
    :cond_3e
    const-string v3, "fav_stickers"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 403
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 416
    :goto_4a
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->favEmojisStickersUpdated:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 418
    .end local v0    # "a":I
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_55
    return-void

    .line 405
    :cond_56
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 406
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .restart local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_68
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emojisList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_89

    .line 408
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_7b

    .line 409
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_7b
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emojisList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 413
    :cond_89
    const-string v3, "fav_emoji"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 414
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4a
.end method

.method private updateRows(Z)V
    .registers 16
    .param p1, "load"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v13, -0x1

    .line 421
    if-eqz p1, :cond_7a

    .line 422
    iget-boolean v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->isSticker:Z

    if-eqz v8, :cond_4b

    .line 423
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->stickersList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 424
    const-string v8, "emoji"

    invoke-static {v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->getUserPrefs(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v10, "fav_stickers"

    const-string v11, ""

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "args":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_22
    array-length v8, v2

    if-ge v0, v8, :cond_7a

    .line 426
    aget-object v8, v2, v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_48

    .line 427
    aget-object v8, v2, v0

    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 428
    .local v4, "id":J
    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-eqz v8, :cond_48

    .line 429
    invoke-static {v4, v5, v9}, Lorg/telegram/messenger/query/StickersQuery;->getStickerById(JI)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    .line 430
    .local v6, "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v6, :cond_48

    .line 431
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->stickersList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    .end local v4    # "id":J
    .end local v6    # "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 437
    .end local v0    # "a":I
    .end local v2    # "args":[Ljava/lang/String;
    :cond_4b
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emojisList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 438
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v10, "mainconfig"

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v10, "fav_emoji"

    const-string v11, ""

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 439
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7a

    .line 440
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    move v8, v9

    :goto_6e
    if-ge v8, v11, :cond_7a

    aget-object v1, v10, v8

    .line 441
    .local v1, "arg":Ljava/lang/String;
    iget-object v12, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emojisList:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    add-int/lit8 v8, v8, 0x1

    goto :goto_6e

    .line 446
    .end local v1    # "arg":Ljava/lang/String;
    .end local v7    # "str":Ljava/lang/String;
    :cond_7a
    iput v9, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 447
    iget v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 448
    .local v3, "i":I
    add-int/lit8 v8, v3, 0x1

    iput v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 449
    iput v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->infoRow:I

    .line 450
    iget v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 451
    add-int/lit8 v8, v3, 0x1

    iput v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 452
    iput v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->startSeparatorRow:I

    .line 453
    iget-boolean v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->isSticker:Z

    if-eqz v8, :cond_e3

    .line 454
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->stickersList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b6

    .line 455
    iput v13, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->startRow:I

    .line 456
    iput v13, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->endRow:I

    .line 457
    iget v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 458
    add-int/lit8 v8, v3, 0x1

    iput v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 459
    iput v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emptyRow:I

    .line 460
    iget v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 461
    add-int/lit8 v8, v3, 0x1

    iput v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 462
    iput v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->endSeparatorRow:I

    .line 496
    :goto_ac
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listAdapter:Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;

    if-eqz v8, :cond_b5

    .line 497
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listAdapter:Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;

    invoke-virtual {v8}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->notifyDataSetChanged()V

    .line 499
    :cond_b5
    return-void

    .line 464
    :cond_b6
    iget v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->startRow:I

    .line 465
    iget v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->startRow:I

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->stickersList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->endRow:I

    .line 466
    iget v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->stickersList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 467
    iget v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 468
    add-int/lit8 v8, v3, 0x1

    iput v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 469
    iput v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->endSeparatorRow:I

    .line 470
    iget v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 471
    add-int/lit8 v8, v3, 0x1

    iput v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 472
    iput v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->clearRow:I

    .line 473
    iput v13, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emptyRow:I

    goto :goto_ac

    .line 475
    :cond_e3
    iget-object v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emojisList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_100

    .line 476
    iput v13, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->startRow:I

    .line 477
    iput v13, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->endRow:I

    .line 478
    iget v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 479
    add-int/lit8 v8, v3, 0x1

    iput v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 480
    iput v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emptyRow:I

    .line 481
    iget v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 482
    add-int/lit8 v8, v3, 0x1

    iput v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 483
    iput v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->endSeparatorRow:I

    goto :goto_ac

    .line 485
    :cond_100
    iget v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    iput v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->startRow:I

    .line 486
    iget v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->startRow:I

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emojisList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->endRow:I

    .line 487
    iget v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    iget-object v9, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emojisList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 488
    iget v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 489
    add-int/lit8 v8, v3, 0x1

    iput v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 490
    iput v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->endSeparatorRow:I

    .line 491
    iget v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 492
    add-int/lit8 v8, v3, 0x1

    iput v8, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->rowCount:I

    .line 493
    iput v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->clearRow:I

    .line 494
    iput v13, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->emptyRow:I

    goto :goto_ac
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 295
    const/4 v0, 0x1

    .line 296
    .local v0, "i":I
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v3, 0x7f0200dd

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 297
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 298
    iget-boolean v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->isSticker:Z

    if-eqz v2, :cond_9c

    .line 299
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "FavStickersReorder"

    const v4, 0x7f0706f7

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 300
    invoke-static {v6}, Lorg/telegram/messenger/query/StickersQuery;->checkStickers(I)V

    .line 304
    :goto_25
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/Telehgram/FavEmojisActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$1;-><init>(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 311
    new-instance v2, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;-><init>(Lorg/telegram/ui/Telehgram/FavEmojisActivity;Lorg/telegram/ui/Telehgram/FavEmojisActivity$1;)V

    iput-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listAdapter:Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;

    .line 312
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->fragmentView:Landroid/view/View;

    .line 313
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->fragmentView:Landroid/view/View;

    const-string v3, "windowBackgroundGray"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 315
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 316
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setFocusable(Z)V

    .line 317
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-direct {v3, p1, v5, v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 318
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 319
    .local v1, "recyclerListView":Lorg/telegram/ui/Components/RecyclerListView;
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v2, :cond_66

    .line 320
    const/4 v0, 0x2

    .line 322
    :cond_66
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollbarPosition(I)V

    .line 323
    new-instance v2, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;

    new-instance v3, Lorg/telegram/ui/Telehgram/FavEmojisActivity$TouchHelperCallback;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$TouchHelperCallback;-><init>(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)V

    invoke-direct {v2, v3}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;-><init>(Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper$Callback;)V

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/support/widget/helper/ItemTouchHelper;->attachToRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 324
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->fragmentView:Landroid/view/View;

    check-cast v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listAdapter:Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 326
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$2;-><init>(Lorg/telegram/ui/Telehgram/FavEmojisActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 384
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->fragmentView:Landroid/view/View;

    return-object v2

    .line 302
    .end local v1    # "recyclerListView":Lorg/telegram/ui/Components/RecyclerListView;
    :cond_9c
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v3, "FavEmojisReorder"

    const v4, 0x7f0706ec

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_25
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 287
    sget v0, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    if-ne p1, v0, :cond_9

    .line 288
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->updateRows(Z)V

    .line 292
    :cond_8
    :goto_8
    return-void

    .line 289
    :cond_9
    sget v0, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listAdapter:Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;

    if-eqz v0, :cond_8

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listAdapter:Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity$ListAdapter;->notifyDataSetChanged()V

    goto :goto_8
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .registers 12

    .prologue
    .line 502
    const/16 v0, 0xe

    new-array v9, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 503
    .local v9, "r9":[Lorg/telegram/ui/ActionBar/ThemeDescription;
    const/4 v8, 0x0

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Telehgram/FavEmojisActivity$StickerImageView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/telegram/ui/Telehgram/FavEmojisActivity$EmojiImageView;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    .line 504
    const/4 v8, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    .line 505
    const/4 v8, 0x2

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    .line 506
    const/4 v8, 0x3

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    .line 507
    const/4 v8, 0x4

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    .line 508
    const/4 v8, 0x5

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    .line 509
    const/4 v8, 0x6

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    .line 510
    const/4 v8, 0x7

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    .line 511
    const/16 v8, 0x8

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 512
    const/16 v10, 0x9

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

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

    .line 513
    const/16 v10, 0xa

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 514
    const/16 v8, 0xb

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    aput-object v0, v9, v8

    .line 515
    const/16 v8, 0xc

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 516
    const/16 v10, 0xd

    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

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

    .line 517
    return-object v9
.end method

.method public onFragmentCreate()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 271
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->arguments:Landroid/os/Bundle;

    const-string v1, "sticker"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->isSticker:Z

    .line 273
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 274
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 275
    invoke-direct {p0, v3}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->updateRows(Z)V

    .line 276
    return v3
.end method

.method public onFragmentDestroy()V
    .registers 3

    .prologue
    .line 280
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 281
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 282
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 283
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;->sendReorder()V

    .line 284
    return-void
.end method
