.class Lcom/koushikdutta/async/BufferedDataSink$3;
.super Ljava/lang/Object;
.source "BufferedDataSink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/BufferedDataSink;->end()V
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
    .line 120
    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataSink$3;->this$0:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink$3;->this$0:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v0}, Lcom/koushikdutta/async/BufferedDataSink;->end()V

    .line 124
    return-void
.end method
