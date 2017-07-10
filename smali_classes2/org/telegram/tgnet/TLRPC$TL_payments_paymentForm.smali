.class public Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_payments_paymentForm"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public bot_id:I

.field public can_save_credentials:Z

.field public flags:I

.field public invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

.field public native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

.field public native_provider:Ljava/lang/String;

.field public password_missing:Z

.field public provider_id:I

.field public saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

.field public saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

.field public url:Ljava/lang/String;

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
    .line 1443
    const v0, 0x3f56aea3

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1442
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 1456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 1459
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->constructor:I

    if-eq v1, p1, :cond_1e

    .line 1460
    if-eqz p2, :cond_1c

    .line 1461
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in TL_payments_paymentForm"

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

    .line 1463
    :cond_1c
    const/4 v0, 0x0

    .line 1468
    :goto_1d
    return-object v0

    .line 1466
    :cond_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;-><init>()V

    .line 1467
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_1d
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .registers 12
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1472
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    .line 1473
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_91

    move v4, v5

    :goto_f
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->can_save_credentials:Z

    .line 1474
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_94

    move v4, v5

    :goto_18
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    .line 1475
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->bot_id:I

    .line 1476
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_invoice;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_invoice;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    .line 1477
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->provider_id:I

    .line 1478
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->url:Ljava/lang/String;

    .line 1479
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_42

    .line 1480
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_provider:Ljava/lang/String;

    .line 1482
    :cond_42
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_52

    .line 1483
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 1485
    :cond_52
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_62

    .line 1486
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    .line 1488
    :cond_62
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_72

    .line 1489
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    .line 1491
    :cond_72
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 1492
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_96

    .line 1493
    if-eqz p2, :cond_a7

    .line 1494
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v7, "wrong Vector magic, got %x"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "magic":I
    :cond_91
    move v4, v6

    .line 1473
    goto/16 :goto_f

    :cond_94
    move v4, v6

    .line 1474
    goto :goto_18

    .line 1498
    .restart local v2    # "magic":I
    :cond_96
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 1499
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_9b
    if-ge v0, v1, :cond_a7

    .line 1500
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 1501
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v3, :cond_a8

    .line 1506
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$User;
    :cond_a7
    return-void

    .line 1504
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$User;
    :cond_a8
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1499
    add-int/lit8 v0, v0, 0x1

    goto :goto_9b
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .registers 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 1509
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1510
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->can_save_credentials:Z

    if-eqz v2, :cond_7e

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    or-int/lit8 v2, v2, 0x4

    :goto_d
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    .line 1511
    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->password_missing:Z

    if-eqz v2, :cond_83

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    or-int/lit8 v2, v2, 0x8

    :goto_17
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    .line 1512
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1513
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->bot_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1514
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->invoice:Lorg/telegram/tgnet/TLRPC$TL_invoice;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_invoice;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1515
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->provider_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1516
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->url:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 1517
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3d

    .line 1518
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_provider:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 1520
    :cond_3d
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_48

    .line 1521
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->native_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1523
    :cond_48
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_53

    .line 1524
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_info:Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_paymentRequestedInfo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1526
    :cond_53
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5e

    .line 1527
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->saved_credentials:Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_paymentSavedCredentialsCard;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1529
    :cond_5e
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1530
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1531
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1532
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_6e
    if-ge v0, v1, :cond_88

    .line 1533
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1532
    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    .line 1510
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_7e
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v2, v2, -0x5

    goto :goto_d

    .line 1511
    :cond_83
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_paymentForm;->flags:I

    and-int/lit8 v2, v2, -0x9

    goto :goto_17

    .line 1535
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    :cond_88
    return-void
.end method
