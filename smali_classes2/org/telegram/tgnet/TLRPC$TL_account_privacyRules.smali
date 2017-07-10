.class public Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_account_privacyRules"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public rules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2284
    const v0, 0x554abb6f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2283
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 2286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    .line 2287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 2290
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 2291
    if-eqz p2, :cond_1c

    .line 2292
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_account_privacyRules"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2294
    :cond_1c
    const/4 v0, 0x0

    .line 2299
    :goto_1d
    return-object v0

    .line 2297
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;-><init>()V

    .line 2298
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const v5, 0x1cb5c415

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 2303
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 2304
    .local v2, "magic":I
    if-eq v2, v5, :cond_21

    .line 2305
    if-eqz p2, :cond_32

    .line 2306
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2310
    :cond_21
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 2311
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_26
    if-ge v0, v1, :cond_3b

    .line 2312
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$PrivacyRule;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    move-result-object v3

    .line 2313
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    if-nez v3, :cond_33

    .line 2333
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    :cond_32
    return-void

    .line 2316
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    :cond_33
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2311
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 2318
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$PrivacyRule;
    :cond_3b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 2319
    if-eq v2, v5, :cond_57

    .line 2320
    if-eqz p2, :cond_32

    .line 2321
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2325
    :cond_57
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 2326
    const/4 v0, 0x0

    :goto_5c
    if-ge v0, v1, :cond_32

    .line 2327
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 2328
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_32

    .line 2331
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2326
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 6
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v3, 0x1cb5c415

    .line 2336
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2337
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2338
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2339
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2340
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_15
    if-ge v0, v1, :cond_25

    .line 2341
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$PrivacyRule;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2340
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 2343
    :cond_25
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2344
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2345
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 2346
    const/4 v0, 0x0

    :goto_32
    if-ge v0, v1, :cond_42

    .line 2347
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 2346
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 2349
    :cond_42
    return-void
.end method
