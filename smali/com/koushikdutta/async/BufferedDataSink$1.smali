.class Lcom/koushikdutta/async/BufferedDataSink$1;
.super Ljava/lang/Object;
.source "BufferedDataSink.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/WritableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/BufferedDataSink;->setDataSink(Lcom/koushikdutta/async/DataSink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/BufferedDataSink;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/BufferedDataSink;)V
    .registers 2
    .param p1, "this$0"    # Lcom/koushikdutta/async/BufferedDataSink;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataSink$1;->this$0:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteable()V
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink$1;->this$0:Lcom/koushikdutta/async/BufferedDataSink;

    # invokes: Lcom/koushikdutta/async/BufferedDataSink;->writePending()V
    invoke-static {v0}, Lcom/koushikdutta/async/BufferedDataSink;->access$000(Lcom/koushikdutta/async/BufferedDataSink;)V

    .line 35
    return-void
.end method
