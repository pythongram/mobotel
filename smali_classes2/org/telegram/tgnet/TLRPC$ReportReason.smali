.class public Lorg/telegram/tgnet/TLRPC$ReportReason;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportReason"
.end annotation


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8508
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReportReason;
    .registers 9
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 8512
    const/4 v0, 0x0

    .line 8513
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    sparse-switch p1, :sswitch_data_3c

    .line 8527
    :goto_4
    if-nez v0, :cond_36

    if-eqz p2, :cond_36

    .line 8528
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "can\'t parse magic %x in ReportReason"

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

    .line 8515
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonSpam;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonSpam;-><init>()V

    .line 8516
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    goto :goto_4

    .line 8518
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonViolence;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonViolence;-><init>()V

    .line 8519
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    goto :goto_4

    .line 8521
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonOther;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonOther;-><init>()V

    .line 8522
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    goto :goto_4

    .line 8524
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonPornography;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputReportReasonPornography;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$ReportReason;
    goto :goto_4

    .line 8530
    :cond_36
    if-eqz v0, :cond_3b

    .line 8531
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$ReportReason;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 8533
    :cond_3b
    return-object v0

    .line 8513
    :sswitch_data_3c
    .sparse-switch
        -0x1e8b92f6 -> :sswitch_2a
        0x1e22c78d -> :sswitch_24
        0x2e59d922 -> :sswitch_30
        0x58dbcab8 -> :sswitch_1e
    .end sparse-switch
.end method
