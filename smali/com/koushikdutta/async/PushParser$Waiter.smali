.class abstract Lcom/koushikdutta/async/PushParser$Waiter;
.super Ljava/lang/Object;
.source "PushParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/PushParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Waiter"
.end annotation


# instance fields
.field length:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "length"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/koushikdutta/async/PushParser$Waiter;->length:I

    .line 23
    return-void
.end method


# virtual methods
.method public abstract onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
.end method
