.class Lcom/koushikdutta/async/http/spdy/HeaderReader$1;
.super Ljava/util/zip/Inflater;
.source "HeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/spdy/HeaderReader;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/spdy/HeaderReader;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/HeaderReader;)V
    .registers 2
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/spdy/HeaderReader;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/HeaderReader$1;->this$0:Lcom/koushikdutta/async/http/spdy/HeaderReader;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public inflate([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 23
    .local v0, "result":I
    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/spdy/HeaderReader$1;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 24
    sget-object v1, Lcom/koushikdutta/async/http/spdy/Spdy3;->DICTIONARY:[B

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/spdy/HeaderReader$1;->setDictionary([B)V

    .line 25
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    .line 27
    :cond_15
    return v0
.end method
