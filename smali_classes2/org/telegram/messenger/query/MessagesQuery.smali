.class public Lorg/telegram/messenger/query/MessagesQuery;
.super Ljava/lang/Object;
.source "MessagesQuery.java"


# static fields
.field private static entityComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Lorg/telegram/messenger/query/MessagesQuery$1;

    invoke-direct {v0}, Lorg/telegram/messenger/query/MessagesQuery$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/MessagesQuery;->entityComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(IIZ)Lorg/telegram/messenger/MessageObject;
    .registers 4
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/query/MessagesQuery;->loadPinnedMessageInternal(IIZ)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;
    .registers 6
    .param p0, "x0"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/query/MessagesQuery;->broadcastPinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/tgnet/TLRPC$Message;)V
    .registers 1
    .param p0, "x0"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 38
    invoke-static {p0}, Lorg/telegram/messenger/query/MessagesQuery;->savePinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;)V

    return-void
.end method

.method static synthetic access$300(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;JZ)V
    .registers 7
    .param p0, "x0"    # Ljava/util/ArrayList;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/util/ArrayList;
    .param p4, "x4"    # J
    .param p6, "x5"    # Z

    .prologue
    .line 38
    invoke-static/range {p0 .. p6}, Lorg/telegram/messenger/query/MessagesQuery;->broadcastReplyMessages(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;JZ)V

    return-void
.end method

.method static synthetic access$400(Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Ljava/util/HashMap;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 38
    invoke-static {p0, p1}, Lorg/telegram/messenger/query/MessagesQuery;->saveReplyMessages(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method private static broadcastPinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;
    .registers 15
    .param p0, "result"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p3, "isCache"    # Z
    .param p4, "returnValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;ZZ)",
            "Lorg/telegram/messenger/MessageObject;"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p2, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v5, "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1e

    .line 177
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$User;

    .line 178
    .local v9, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget v0, v9, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 180
    .end local v9    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1e
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v6, "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/4 v7, 0x0

    :goto_24
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_3c

    .line 182
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 183
    .local v8, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    .line 185
    .end local v8    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_3c
    if-eqz p4, :cond_45

    .line 186
    new-instance v0, Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v5, v6, v1}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    .line 197
    :goto_44
    return-object v0

    .line 188
    :cond_45
    new-instance v0, Lorg/telegram/messenger/query/MessagesQuery$5;

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/query/MessagesQuery$5;-><init>(Ljava/util/ArrayList;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 197
    const/4 v0, 0x0

    goto :goto_44
.end method

.method private static broadcastReplyMessages(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;JZ)V
    .registers 23
    .param p4, "dialog_id"    # J
    .param p6, "isCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .local p1, "replyMessageOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p3, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 421
    .local v8, "usersDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v12, 0x0

    .local v12, "a":I
    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_20

    .line 422
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$User;

    .line 423
    .local v14, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget v2, v14, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 425
    .end local v14    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_20
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 426
    .local v9, "chatsDict":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$Chat;>;"
    const/4 v12, 0x0

    :goto_26
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_40

    .line 427
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 428
    .local v13, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    iget v2, v13, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    add-int/lit8 v12, v12, 0x1

    goto :goto_26

    .line 430
    .end local v13    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_40
    new-instance v2, Lorg/telegram/messenger/query/MessagesQuery$9;

    move-object/from16 v3, p2

    move/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v11}, Lorg/telegram/messenger/query/MessagesQuery$9;-><init>(Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;J)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 460
    return-void
.end method

.method private static checkInclusion(ILjava/util/ArrayList;)Z
    .registers 8
    .param p0, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    const/4 v3, 0x0

    .line 467
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 477
    :cond_9
    :goto_9
    return v3

    .line 470
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 471
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_f
    if-ge v0, v1, :cond_9

    .line 472
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 473
    .local v2, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-gt v4, p0, :cond_24

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v4, v5

    if-le v4, p0, :cond_24

    .line 474
    const/4 v3, 0x1

    goto :goto_9

    .line 471
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method private static checkIntersection(IILjava/util/ArrayList;)Z
    .registers 9
    .param p0, "start"    # I
    .param p1, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    const/4 v3, 0x0

    .line 481
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 491
    :cond_9
    :goto_9
    return v3

    .line 484
    :cond_a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 485
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_f
    if-ge v0, v1, :cond_9

    .line 486
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 487
    .local v2, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-le v4, p0, :cond_24

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v5, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v4, v5

    if-gt v4, p1, :cond_24

    .line 488
    const/4 v3, 0x1

    goto :goto_9

    .line 485
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method public static getEntities([Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .registers 38
    .param p0, "message"    # [Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    if-eqz p0, :cond_8

    const/16 v31, 0x0

    aget-object v31, p0, v31

    if-nez v31, :cond_a

    .line 506
    :cond_8
    const/4 v12, 0x0

    .line 676
    :cond_9
    return-object v12

    .line 508
    :cond_a
    const/4 v12, 0x0

    .line 510
    .local v12, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    const/16 v29, -0x1

    .line 511
    .local v29, "start":I
    const/16 v18, 0x0

    .line 512
    .local v18, "lastIndex":I
    const/16 v16, 0x0

    .line 513
    .local v16, "isPre":Z
    const-string v19, "`"

    .line 514
    .local v19, "mono":Ljava/lang/String;
    const-string v20, "```"

    .line 515
    .local v20, "pre":Ljava/lang/String;
    const-string v6, "**"

    .line 516
    .local v6, "bold":Ljava/lang/String;
    const-string v17, "__"

    .line 517
    .local v17, "italic":Ljava/lang/String;
    :goto_19
    const/16 v31, 0x0

    aget-object v32, p0, v31

    if-nez v16, :cond_7a

    const-string v31, "`"

    :goto_21
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v15

    .local v15, "index":I
    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v15, v0, :cond_250

    .line 518
    const/16 v31, -0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_83

    .line 519
    const/16 v31, 0x0

    aget-object v31, p0, v31

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->length()I

    move-result v31

    sub-int v31, v31, v15

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_7d

    const/16 v31, 0x0

    aget-object v31, p0, v31

    add-int/lit8 v32, v15, 0x1

    invoke-interface/range {v31 .. v32}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v31

    const/16 v32, 0x60

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_7d

    const/16 v31, 0x0

    aget-object v31, p0, v31

    add-int/lit8 v32, v15, 0x2

    invoke-interface/range {v31 .. v32}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v31

    const/16 v32, 0x60

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_7d

    const/16 v16, 0x1

    .line 520
    :goto_71
    move/from16 v29, v15

    .line 521
    if-eqz v16, :cond_80

    const/16 v31, 0x3

    :goto_77
    add-int v18, v15, v31

    goto :goto_19

    .line 517
    .end local v15    # "index":I
    :cond_7a
    const-string v31, "```"

    goto :goto_21

    .line 519
    .restart local v15    # "index":I
    :cond_7d
    const/16 v16, 0x0

    goto :goto_71

    .line 521
    :cond_80
    const/16 v31, 0x1

    goto :goto_77

    .line 523
    :cond_83
    if-nez v12, :cond_8a

    .line 524
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .restart local v12    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    :cond_8a
    if-eqz v16, :cond_b3

    const/16 v31, 0x3

    :goto_8e
    add-int v4, v15, v31

    .local v4, "a":I
    :goto_90
    const/16 v31, 0x0

    aget-object v31, p0, v31

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->length()I

    move-result v31

    move/from16 v0, v31

    if-ge v4, v0, :cond_b6

    .line 527
    const/16 v31, 0x0

    aget-object v31, p0, v31

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v31

    const/16 v32, 0x60

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_b6

    .line 528
    add-int/lit8 v15, v15, 0x1

    .line 526
    add-int/lit8 v4, v4, 0x1

    goto :goto_90

    .end local v4    # "a":I
    :cond_b3
    const/16 v31, 0x1

    goto :goto_8e

    .line 533
    .restart local v4    # "a":I
    :cond_b6
    if-eqz v16, :cond_1c6

    const/16 v31, 0x3

    :goto_ba
    add-int v18, v15, v31

    .line 534
    if-eqz v16, :cond_1e6

    .line 535
    if-lez v29, :cond_1ca

    const/16 v31, 0x0

    aget-object v31, p0, v31

    add-int/lit8 v32, v29, -0x1

    invoke-interface/range {v31 .. v32}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    .line 536
    .local v14, "firstChar":I
    :goto_ca
    const/16 v31, 0x20

    move/from16 v0, v31

    if-eq v14, v0, :cond_d6

    const/16 v31, 0xa

    move/from16 v0, v31

    if-ne v14, v0, :cond_1cd

    :cond_d6
    const/16 v22, 0x1

    .line 537
    .local v22, "replacedFirst":Z
    :goto_d8
    const/16 v31, 0x0

    aget-object v32, p0, v31

    const/16 v33, 0x0

    if-eqz v22, :cond_1d1

    const/16 v31, 0x1

    :goto_e2
    sub-int v31, v29, v31

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v30

    .line 538
    .local v30, "startMessage":Ljava/lang/CharSequence;
    const/16 v31, 0x0

    aget-object v31, p0, v31

    add-int/lit8 v32, v29, 0x3

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v0, v1, v15}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v10

    .line 539
    .local v10, "content":Ljava/lang/CharSequence;
    add-int/lit8 v31, v15, 0x3

    const/16 v32, 0x0

    aget-object v32, p0, v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->length()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_1d5

    const/16 v31, 0x0

    aget-object v31, p0, v31

    add-int/lit8 v32, v15, 0x3

    invoke-interface/range {v31 .. v32}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    .line 540
    :goto_116
    const/16 v31, 0x0

    aget-object v32, p0, v31

    add-int/lit8 v33, v15, 0x3

    const/16 v31, 0x20

    move/from16 v0, v31

    if-eq v14, v0, :cond_128

    const/16 v31, 0xa

    move/from16 v0, v31

    if-ne v14, v0, :cond_1d8

    :cond_128
    const/16 v31, 0x1

    :goto_12a
    add-int v31, v31, v33

    const/16 v33, 0x0

    aget-object v33, p0, v33

    invoke-interface/range {v33 .. v33}, Ljava/lang/CharSequence;->length()I

    move-result v33

    move-object/from16 v0, v32

    move/from16 v1, v31

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v11

    .line 541
    .local v11, "endMessage":Ljava/lang/CharSequence;
    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->length()I

    move-result v31

    if-eqz v31, :cond_1dc

    .line 542
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput-object v30, v31, v32

    const/16 v32, 0x1

    const-string v33, "\n"

    aput-object v33, v31, v32

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v30

    .line 546
    :goto_15a
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v31

    if-eqz v31, :cond_176

    .line 547
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "\n"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    aput-object v11, v31, v32

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 549
    :cond_176
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1c0

    .line 550
    const/16 v31, 0x0

    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v30, v32, v33

    const/16 v33, 0x1

    aput-object v10, v32, v33

    const/16 v33, 0x2

    aput-object v11, v32, v33

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v32

    aput-object v32, p0, v31

    .line 551
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;-><init>()V

    .line 552
    .local v13, "entity":Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;
    if-eqz v22, :cond_1e0

    const/16 v31, 0x0

    :goto_1a1
    add-int v31, v31, v29

    move/from16 v0, v31

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;->offset:I

    .line 553
    sub-int v31, v15, v29

    add-int/lit8 v32, v31, -0x3

    if-eqz v22, :cond_1e3

    const/16 v31, 0x0

    :goto_1af
    add-int v31, v31, v32

    move/from16 v0, v31

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;->length:I

    .line 554
    const-string v31, ""

    move-object/from16 v0, v31

    iput-object v0, v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;->language:Ljava/lang/String;

    .line 555
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    add-int/lit8 v18, v18, -0x6

    .line 568
    .end local v10    # "content":Ljava/lang/CharSequence;
    .end local v11    # "endMessage":Ljava/lang/CharSequence;
    .end local v13    # "entity":Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;
    .end local v14    # "firstChar":I
    .end local v22    # "replacedFirst":Z
    .end local v30    # "startMessage":Ljava/lang/CharSequence;
    :cond_1c0
    :goto_1c0
    const/16 v29, -0x1

    .line 569
    const/16 v16, 0x0

    goto/16 :goto_19

    .line 533
    :cond_1c6
    const/16 v31, 0x1

    goto/16 :goto_ba

    .line 535
    :cond_1ca
    const/4 v14, 0x0

    goto/16 :goto_ca

    .line 536
    .restart local v14    # "firstChar":I
    :cond_1cd
    const/16 v22, 0x0

    goto/16 :goto_d8

    .line 537
    .restart local v22    # "replacedFirst":Z
    :cond_1d1
    const/16 v31, 0x0

    goto/16 :goto_e2

    .line 539
    .restart local v10    # "content":Ljava/lang/CharSequence;
    .restart local v30    # "startMessage":Ljava/lang/CharSequence;
    :cond_1d5
    const/4 v14, 0x0

    goto/16 :goto_116

    .line 540
    :cond_1d8
    const/16 v31, 0x0

    goto/16 :goto_12a

    .line 544
    .restart local v11    # "endMessage":Ljava/lang/CharSequence;
    :cond_1dc
    const/16 v22, 0x1

    goto/16 :goto_15a

    .line 552
    .restart local v13    # "entity":Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;
    :cond_1e0
    const/16 v31, 0x1

    goto :goto_1a1

    .line 553
    :cond_1e3
    const/16 v31, 0x1

    goto :goto_1af

    .line 559
    .end local v10    # "content":Ljava/lang/CharSequence;
    .end local v11    # "endMessage":Ljava/lang/CharSequence;
    .end local v13    # "entity":Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;
    .end local v14    # "firstChar":I
    .end local v22    # "replacedFirst":Z
    .end local v30    # "startMessage":Ljava/lang/CharSequence;
    :cond_1e6
    add-int/lit8 v31, v29, 0x1

    move/from16 v0, v31

    if-eq v0, v15, :cond_1c0

    .line 560
    const/16 v31, 0x0

    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    aget-object v34, p0, v34

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    const/16 v34, 0x0

    aget-object v34, p0, v34

    add-int/lit8 v35, v29, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-static {v0, v1, v15}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x2

    const/16 v34, 0x0

    aget-object v34, p0, v34

    add-int/lit8 v35, v15, 0x1

    const/16 v36, 0x0

    aget-object v36, p0, v36

    invoke-interface/range {v36 .. v36}, Ljava/lang/CharSequence;->length()I

    move-result v36

    invoke-static/range {v34 .. v36}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v32

    aput-object v32, p0, v31

    .line 561
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;-><init>()V

    .line 562
    .local v13, "entity":Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;
    move/from16 v0, v29

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;->offset:I

    .line 563
    sub-int v31, v15, v29

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;->length:I

    .line 564
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    add-int/lit8 v18, v18, -0x2

    goto/16 :goto_1c0

    .line 572
    .end local v4    # "a":I
    .end local v13    # "entity":Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;
    :cond_250
    const/16 v31, -0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_2ad

    if-eqz v16, :cond_2ad

    .line 573
    const/16 v31, 0x0

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    aget-object v34, p0, v34

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    const/16 v34, 0x0

    aget-object v34, p0, v34

    add-int/lit8 v35, v29, 0x2

    const/16 v36, 0x0

    aget-object v36, p0, v36

    invoke-interface/range {v36 .. v36}, Ljava/lang/CharSequence;->length()I

    move-result v36

    invoke-static/range {v34 .. v36}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v32

    aput-object v32, p0, v31

    .line 574
    if-nez v12, :cond_29b

    .line 575
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .restart local v12    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    :cond_29b
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;-><init>()V

    .line 578
    .restart local v13    # "entity":Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;
    move/from16 v0, v29

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;->offset:I

    .line 579
    const/16 v31, 0x1

    move/from16 v0, v31

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;->length:I

    .line 580
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    .end local v13    # "entity":Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;
    :cond_2ad
    const/16 v31, 0x0

    aget-object v31, p0, v31

    move-object/from16 v0, v31

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v31, v0

    if-eqz v31, :cond_3f1

    .line 584
    const/16 v31, 0x0

    aget-object v26, p0, v31

    check-cast v26, Landroid/text/Spannable;

    .line 585
    .local v26, "spannable":Landroid/text/Spannable;
    const/16 v31, 0x0

    const/16 v32, 0x0

    aget-object v32, p0, v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->length()I

    move-result v32

    const-class v33, Lorg/telegram/ui/Components/TypefaceSpan;

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [Lorg/telegram/ui/Components/TypefaceSpan;

    .line 586
    .local v27, "spans":[Lorg/telegram/ui/Components/TypefaceSpan;
    if-eqz v27, :cond_341

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v31, v0

    if-lez v31, :cond_341

    .line 587
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_2e3
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v4, v0, :cond_341

    .line 588
    aget-object v23, v27, v4

    .line 589
    .local v23, "span":Lorg/telegram/ui/Components/TypefaceSpan;
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v25

    .line 590
    .local v25, "spanStart":I
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v24

    .line 591
    .local v24, "spanEnd":I
    move/from16 v0, v25

    invoke-static {v0, v12}, Lorg/telegram/messenger/query/MessagesQuery;->checkInclusion(ILjava/util/ArrayList;)Z

    move-result v31

    if-nez v31, :cond_318

    move/from16 v0, v24

    invoke-static {v0, v12}, Lorg/telegram/messenger/query/MessagesQuery;->checkInclusion(ILjava/util/ArrayList;)Z

    move-result v31

    if-nez v31, :cond_318

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-static {v0, v1, v12}, Lorg/telegram/messenger/query/MessagesQuery;->checkIntersection(IILjava/util/ArrayList;)Z

    move-result v31

    if-eqz v31, :cond_31b

    .line 587
    :cond_318
    :goto_318
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e3

    .line 594
    :cond_31b
    if-nez v12, :cond_322

    .line 595
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .restart local v12    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    :cond_322
    invoke-virtual/range {v23 .. v23}, Lorg/telegram/ui/Components/TypefaceSpan;->isBold()Z

    move-result v31

    if-eqz v31, :cond_33b

    .line 599
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;-><init>()V

    .line 603
    .local v13, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :goto_32d
    move/from16 v0, v25

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 604
    sub-int v31, v24, v25

    move/from16 v0, v31

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 605
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_318

    .line 601
    .end local v13    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_33b
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;-><init>()V

    .restart local v13    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    goto :goto_32d

    .line 609
    .end local v4    # "a":I
    .end local v13    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .end local v23    # "span":Lorg/telegram/ui/Components/TypefaceSpan;
    .end local v24    # "spanEnd":I
    .end local v25    # "spanStart":I
    :cond_341
    const/16 v31, 0x0

    const/16 v32, 0x0

    aget-object v32, p0, v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->length()I

    move-result v32

    const-class v33, Lorg/telegram/ui/Components/URLSpanUserMention;

    move-object/from16 v0, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [Lorg/telegram/ui/Components/URLSpanUserMention;

    .line 610
    .local v28, "spansMentions":[Lorg/telegram/ui/Components/URLSpanUserMention;
    if-eqz v28, :cond_3f1

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v31, v0

    if-lez v31, :cond_3f1

    .line 611
    if-nez v12, :cond_36b

    .line 612
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .restart local v12    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    :cond_36b
    const/4 v5, 0x0

    .local v5, "b":I
    :goto_36c
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v5, v0, :cond_3f1

    .line 615
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;-><init>()V

    .line 616
    .local v13, "entity":Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;
    aget-object v31, v28, v5

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/ui/Components/URLSpanUserMention;->getURL()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    invoke-static/range {v31 .. v31}, Lorg/telegram/messenger/MessagesController;->getInputUser(I)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v31

    move-object/from16 v0, v31

    iput-object v0, v13, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 617
    iget-object v0, v13, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3ed

    .line 618
    aget-object v31, v28, v5

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v31

    move/from16 v0, v31

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->offset:I

    .line 619
    aget-object v31, v28, v5

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v31

    const/16 v32, 0x0

    aget-object v32, p0, v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/CharSequence;->length()I

    move-result v32

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->min(II)I

    move-result v31

    iget v0, v13, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->offset:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move/from16 v0, v31

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->length:I

    .line 620
    const/16 v31, 0x0

    aget-object v31, p0, v31

    iget v0, v13, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->offset:I

    move/from16 v32, v0

    iget v0, v13, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->length:I

    move/from16 v33, v0

    add-int v32, v32, v33

    add-int/lit8 v32, v32, -0x1

    invoke-interface/range {v31 .. v32}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v31

    const/16 v32, 0x20

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3ea

    .line 621
    iget v0, v13, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->length:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->length:I

    .line 623
    :cond_3ea
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_3ed
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_36c

    .line 629
    .end local v5    # "b":I
    .end local v13    # "entity":Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;
    .end local v26    # "spannable":Landroid/text/Spannable;
    .end local v27    # "spans":[Lorg/telegram/ui/Components/TypefaceSpan;
    .end local v28    # "spansMentions":[Lorg/telegram/ui/Components/URLSpanUserMention;
    :cond_3f1
    const/4 v7, 0x0

    .local v7, "c":I
    :goto_3f2
    const/16 v31, 0x2

    move/from16 v0, v31

    if-ge v7, v0, :cond_9

    .line 630
    const/16 v18, 0x0

    .line 631
    const/16 v29, -0x1

    .line 632
    if-nez v7, :cond_43d

    const-string v9, "**"

    .line 633
    .local v9, "checkString":Ljava/lang/String;
    :goto_400
    if-nez v7, :cond_440

    const/16 v8, 0x2a

    .line 634
    .local v8, "checkChar":C
    :goto_404
    const/16 v31, 0x0

    aget-object v31, p0, v31

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-static {v0, v9, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v15

    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v15, v0, :cond_510

    .line 635
    const/16 v31, -0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_44e

    .line 636
    if-nez v15, :cond_443

    const/16 v21, 0x20

    .line 637
    .local v21, "prevChar":C
    :goto_422
    invoke-static {v15, v12}, Lorg/telegram/messenger/query/MessagesQuery;->checkInclusion(ILjava/util/ArrayList;)Z

    move-result v31

    if-nez v31, :cond_43a

    const/16 v31, 0x20

    move/from16 v0, v21

    move/from16 v1, v31

    if-eq v0, v1, :cond_438

    const/16 v31, 0xa

    move/from16 v0, v21

    move/from16 v1, v31

    if-ne v0, v1, :cond_43a

    .line 638
    :cond_438
    move/from16 v29, v15

    .line 640
    :cond_43a
    add-int/lit8 v18, v15, 0x2

    .line 641
    goto :goto_404

    .line 632
    .end local v8    # "checkChar":C
    .end local v9    # "checkString":Ljava/lang/String;
    .end local v21    # "prevChar":C
    :cond_43d
    const-string v9, "__"

    goto :goto_400

    .line 633
    .restart local v9    # "checkString":Ljava/lang/String;
    :cond_440
    const/16 v8, 0x5f

    goto :goto_404

    .line 636
    .restart local v8    # "checkChar":C
    :cond_443
    const/16 v31, 0x0

    aget-object v31, p0, v31

    add-int/lit8 v32, v15, -0x1

    invoke-interface/range {v31 .. v32}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    goto :goto_422

    .line 642
    :cond_44e
    add-int/lit8 v4, v15, 0x2

    .restart local v4    # "a":I
    :goto_450
    const/16 v31, 0x0

    aget-object v31, p0, v31

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->length()I

    move-result v31

    move/from16 v0, v31

    if-ge v4, v0, :cond_46f

    .line 643
    const/16 v31, 0x0

    aget-object v31, p0, v31

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v31

    move/from16 v0, v31

    if-ne v0, v8, :cond_46f

    .line 644
    add-int/lit8 v15, v15, 0x1

    .line 642
    add-int/lit8 v4, v4, 0x1

    goto :goto_450

    .line 649
    :cond_46f
    add-int/lit8 v18, v15, 0x2

    .line 650
    invoke-static {v15, v12}, Lorg/telegram/messenger/query/MessagesQuery;->checkInclusion(ILjava/util/ArrayList;)Z

    move-result v31

    if-nez v31, :cond_47f

    move/from16 v0, v29

    invoke-static {v0, v15, v12}, Lorg/telegram/messenger/query/MessagesQuery;->checkIntersection(IILjava/util/ArrayList;)Z

    move-result v31

    if-eqz v31, :cond_482

    .line 651
    :cond_47f
    const/16 v29, -0x1

    .line 652
    goto :goto_404

    .line 654
    :cond_482
    add-int/lit8 v31, v29, 0x2

    move/from16 v0, v31

    if-eq v0, v15, :cond_506

    .line 655
    if-nez v12, :cond_48f

    .line 656
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .restart local v12    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    :cond_48f
    const/16 v31, 0x0

    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    aget-object v34, p0, v34

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    const/16 v34, 0x0

    aget-object v34, p0, v34

    add-int/lit8 v35, v29, 0x2

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-static {v0, v1, v15}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x2

    const/16 v34, 0x0

    aget-object v34, p0, v34

    add-int/lit8 v35, v15, 0x2

    const/16 v36, 0x0

    aget-object v36, p0, v36

    invoke-interface/range {v36 .. v36}, Ljava/lang/CharSequence;->length()I

    move-result v36

    invoke-static/range {v34 .. v36}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v32

    aput-object v32, p0, v31

    .line 660
    if-nez v7, :cond_50a

    .line 661
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;-><init>()V

    .line 665
    .local v13, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :goto_4e2
    move/from16 v0, v29

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 666
    sub-int v31, v15, v29

    add-int/lit8 v31, v31, -0x2

    move/from16 v0, v31

    iput v0, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 667
    iget v0, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move/from16 v31, v0

    iget v0, v13, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    move/from16 v32, v0

    add-int v31, v31, v32

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-static {v0, v1, v12}, Lorg/telegram/messenger/query/MessagesQuery;->removeOffsetAfter(IILjava/util/ArrayList;)V

    .line 668
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    add-int/lit8 v18, v18, -0x4

    .line 671
    .end local v13    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_506
    const/16 v29, -0x1

    goto/16 :goto_404

    .line 663
    :cond_50a
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;-><init>()V

    .restart local v13    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    goto :goto_4e2

    .line 629
    .end local v4    # "a":I
    .end local v13    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_510
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3f2
.end method

.method public static loadPinnedMessage(IIZ)Lorg/telegram/messenger/MessageObject;
    .registers 5
    .param p0, "channelId"    # I
    .param p1, "mid"    # I
    .param p2, "useQueue"    # Z

    .prologue
    .line 53
    if-eqz p2, :cond_14

    .line 54
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/MessagesQuery$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/query/MessagesQuery$2;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 63
    const/4 v0, 0x0

    :goto_13
    return-object v0

    .line 61
    :cond_14
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/query/MessagesQuery;->loadPinnedMessageInternal(IIZ)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    goto :goto_13
.end method

.method private static loadPinnedMessageInternal(IIZ)Lorg/telegram/messenger/MessageObject;
    .registers 22
    .param p0, "channelId"    # I
    .param p1, "mid"    # I
    .param p2, "returnValue"    # Z

    .prologue
    .line 68
    move/from16 v0, p1

    int-to-long v14, v0

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const/16 v13, 0x20

    shl-long v16, v16, v13

    or-long v8, v14, v16

    .line 70
    .local v8, "messageId":J
    const/4 v10, 0x0

    .line 71
    .local v10, "result":Lorg/telegram/tgnet/TLRPC$Message;
    :try_start_f
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v11, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v2, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v12, "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v3, "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "SELECT data, mid, date FROM messages WHERE mid = %d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v4

    .line 77
    .local v4, "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v13

    if-eqz v13, :cond_7b

    .line 78
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v5

    .line 79
    .local v5, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v5, :cond_7b

    .line 80
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v5, v13, v14}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v10

    .line 81
    invoke-virtual {v5}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 82
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    iput v13, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 83
    const/4 v13, 0x2

    invoke-virtual {v4, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    iput v13, v10, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 84
    move/from16 v0, p0

    neg-int v13, v0

    int-to-long v14, v13

    iput-wide v14, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 85
    invoke-static {v10, v12, v3}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 88
    .end local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_7b
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 90
    if-nez v10, :cond_cb

    .line 91
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "SELECT data FROM chat_pinned WHERE uid = %d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v4

    .line 92
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v13

    if-eqz v13, :cond_c8

    .line 93
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v5

    .line 94
    .restart local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    if-eqz v5, :cond_c8

    .line 95
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v5, v13, v14}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v10

    .line 96
    invoke-virtual {v5}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 97
    iget v13, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v0, p1

    if-eq v13, v0, :cond_f1

    .line 98
    const/4 v10, 0x0

    .line 105
    .end local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_c8
    :goto_c8
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 108
    :cond_cb
    if-nez v10, :cond_100

    .line 109
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;-><init>()V

    .line 110
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;
    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v13

    iput-object v13, v7, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 111
    iget-object v13, v7, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v13

    new-instance v14, Lorg/telegram/messenger/query/MessagesQuery$3;

    move/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/telegram/messenger/query/MessagesQuery$3;-><init>(I)V

    invoke-virtual {v13, v7, v14}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 147
    .end local v2    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .end local v3    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v7    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;
    .end local v11    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v12    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_ef
    const/4 v13, 0x0

    :goto_f0
    return-object v13

    .line 100
    .restart local v2    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .restart local v3    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v11    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .restart local v12    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_f1
    move/from16 v0, p0

    neg-int v13, v0

    int-to-long v14, v13

    iput-wide v14, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 101
    invoke-static {v10, v12, v3}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_fa} :catch_fb

    goto :goto_c8

    .line 144
    .end local v2    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .end local v3    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .end local v5    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v11    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v12    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_fb
    move-exception v6

    .line 145
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_ef

    .line 132
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .restart local v3    # "chatsToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "cursor":Lorg/telegram/SQLite/SQLiteCursor;
    .restart local v11    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .restart local v12    # "usersToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_100
    if-eqz p2, :cond_10a

    .line 133
    const/4 v13, 0x1

    :try_start_103
    move/from16 v0, p2

    invoke-static {v10, v11, v2, v13, v0}, Lorg/telegram/messenger/query/MessagesQuery;->broadcastPinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    goto :goto_f0

    .line 135
    :cond_10a
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_11d

    .line 136
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    const-string v14, ","

    invoke-static {v14, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v11}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 138
    :cond_11d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_130

    .line 139
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    const-string v14, ","

    invoke-static {v14, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v2}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 141
    :cond_130
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v10, v11, v2, v13, v14}, Lorg/telegram/messenger/query/MessagesQuery;->broadcastPinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_135} :catch_fb

    goto :goto_ef
.end method

.method public static loadReplyMessagesForMessages(Ljava/util/ArrayList;J)V
    .registers 24
    .param p1, "dialogId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-wide/from16 v0, p1

    long-to-int v4, v0

    if-nez v4, :cond_92

    .line 202
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v19, "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v18, "replyMessageRandomOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, "a":I
    :goto_15
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_74

    .line 206
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/messenger/MessageObject;

    .line 207
    .local v16, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->isReply()Z

    move-result v4

    if-eqz v4, :cond_71

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v4, :cond_71

    .line 208
    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 209
    .local v13, "id":Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_44

    .line 210
    const/16 v4, 0x2c

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    :cond_44
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 214
    .local v17, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v17, :cond_5d

    .line 215
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .restart local v17    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_5d
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_71

    .line 220
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v13    # "id":Ljava/lang/Long;
    .end local v17    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_71
    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    .line 224
    .end local v16    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_74
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 381
    .end local v18    # "replyMessageRandomOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .end local v19    # "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_7a
    :goto_7a
    return-void

    .line 228
    .restart local v18    # "replyMessageRandomOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .restart local v19    # "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_7b
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/query/MessagesQuery$6;

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    move-object/from16 v3, v18

    invoke-direct {v6, v0, v1, v2, v3}, Lorg/telegram/messenger/query/MessagesQuery$6;-><init>(Ljava/util/ArrayList;JLjava/util/HashMap;)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_7a

    .line 274
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v11    # "a":I
    .end local v18    # "replyMessageRandomOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .end local v19    # "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_92
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v8, "replyMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 276
    .local v9, "replyMessageOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .restart local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 278
    .local v12, "channelId":I
    const/4 v11, 0x0

    .restart local v11    # "a":I
    :goto_a3
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_124

    .line 279
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/messenger/MessageObject;

    .line 280
    .restart local v16    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-lez v4, :cond_121

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->isReply()Z

    move-result v4

    if-eqz v4, :cond_121

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v4, :cond_121

    .line 281
    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 282
    .local v13, "id":Ljava/lang/Integer;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v14, v4

    .line 283
    .local v14, "messageId":J
    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_f1

    .line 284
    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v6, v4

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long/2addr v14, v6

    .line 285
    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v12, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    .line 287
    :cond_f1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_fc

    .line 288
    const/16 v4, 0x2c

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    :cond_fc
    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 292
    .restart local v17    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v17, :cond_111

    .line 293
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .restart local v17    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v17

    invoke-virtual {v9, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_111
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_121

    .line 298
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v13    # "id":Ljava/lang/Integer;
    .end local v14    # "messageId":J
    .end local v17    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_121
    add-int/lit8 v11, v11, 0x1

    goto :goto_a3

    .line 302
    .end local v16    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_124
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7a

    .line 306
    move v10, v12

    .line 307
    .local v10, "channelIdFinal":I
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v20

    new-instance v4, Lorg/telegram/messenger/query/MessagesQuery$7;

    move-wide/from16 v6, p1

    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/query/MessagesQuery$7;-><init>(Ljava/lang/StringBuilder;JLjava/util/ArrayList;Ljava/util/HashMap;I)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_7a
.end method

.method private static removeOffsetAfter(IILjava/util/ArrayList;)V
    .registers 7
    .param p0, "start"    # I
    .param p1, "countToRemove"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 495
    .local p2, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 496
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_19

    .line 497
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 498
    .local v2, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    if-le v3, p0, :cond_16

    .line 499
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr v3, p1

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 496
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 502
    .end local v2    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_19
    return-void
.end method

.method private static savePinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;)V
    .registers 3
    .param p0, "result"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 151
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/MessagesQuery$4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/query/MessagesQuery$4;-><init>(Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method private static saveReplyMessages(Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, "replyMessageOwners":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;>;"
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/MessagesQuery$8;

    invoke-direct {v1, p1, p0}, Lorg/telegram/messenger/query/MessagesQuery$8;-><init>(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 417
    return-void
.end method

.method public static sortEntities(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    sget-object v0, Lorg/telegram/messenger/query/MessagesQuery;->entityComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 464
    return-void
.end method
