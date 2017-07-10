.class public Lorg/telegram/messenger/DialogObject;
.super Ljava/lang/Object;
.source "DialogObject.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z
    .registers 2
    .param p0, "dialog"    # Lorg/telegram/tgnet/TLRPC$TL_dialog;

    .prologue
    .line 16
    if-eqz p0, :cond_a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
