.class Lcom/koushikdutta/async/http/body/DocumentBody$1;
.super Ljava/lang/Object;
.source "DocumentBody.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/DocumentBody;->parse(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback",
        "<",
        "Lorg/w3c/dom/Document;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/body/DocumentBody;

.field final synthetic val$completed:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/DocumentBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/body/DocumentBody;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/DocumentBody$1;->this$0:Lcom/koushikdutta/async/http/body/DocumentBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/DocumentBody$1;->val$completed:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/Exception;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p2, Lorg/w3c/dom/Document;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/body/DocumentBody$1;->onCompleted(Ljava/lang/Exception;Lorg/w3c/dom/Document;)V

    return-void
.end method

.method public onCompleted(Ljava/lang/Exception;Lorg/w3c/dom/Document;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "result"    # Lorg/w3c/dom/Document;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/DocumentBody$1;->this$0:Lcom/koushikdutta/async/http/body/DocumentBody;

    iput-object p2, v0, Lcom/koushikdutta/async/http/body/DocumentBody;->document:Lorg/w3c/dom/Document;

    .line 66
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/DocumentBody$1;->val$completed:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 67
    return-void
.end method
