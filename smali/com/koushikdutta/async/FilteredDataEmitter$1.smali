.class Lcom/koushikdutta/async/FilteredDataEmitter$1;
.super Ljava/lang/Object;
.source "FilteredDataEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/FilteredDataEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/FilteredDataEmitter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/FilteredDataEmitter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/koushikdutta/async/FilteredDataEmitter;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter$1;->this$0:Lcom/koushikdutta/async/FilteredDataEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter$1;->this$0:Lcom/koushikdutta/async/FilteredDataEmitter;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->report(Ljava/lang/Exception;)V

    .line 25
    return-void
.end method
