.class Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;
.super Ljava/lang/Object;
.source "MultipartFormDataBody.java"

# interfaces
.implements Lcom/koushikdutta/async/LineEmitter$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->onBoundaryStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

.field final synthetic val$headers:Lcom/koushikdutta/async/http/Headers;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/Headers;)V
    .registers 3
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->val$headers:Lcom/koushikdutta/async/http/Headers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStringAvailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 69
    const-string v1, "\r"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 70
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->val$headers:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/http/Headers;->addLine(Ljava/lang/String;)Lcom/koushikdutta/async/http/Headers;

    .line 96
    :cond_e
    :goto_e
    return-void

    .line 73
    :cond_f
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->handleLast()V

    .line 75
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iput-object v2, v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->liner:Lcom/koushikdutta/async/LineEmitter;

    .line 76
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 77
    new-instance v0, Lcom/koushikdutta/async/http/body/Part;

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->val$headers:Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/body/Part;-><init>(Lcom/koushikdutta/async/http/Headers;)V

    .line 78
    .local v0, "part":Lcom/koushikdutta/async/http/body/Part;
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget-object v1, v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mCallback:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    if-eqz v1, :cond_31

    .line 79
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget-object v1, v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mCallback:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;->onPart(Lcom/koushikdutta/async/http/body/Part;)V

    .line 80
    :cond_31
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v1

    if-nez v1, :cond_e

    .line 81
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/body/Part;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 82
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    new-instance v2, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v2}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    goto :goto_e

    .line 86
    :cond_4a
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/body/Part;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->lastName:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    new-instance v2, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v2}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v2, v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->last:Lcom/koushikdutta/async/ByteBufferList;

    .line 88
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    new-instance v2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    goto :goto_e
.end method
