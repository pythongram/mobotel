.class Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder$2;
.super Ljava/lang/Object;
.source "IonDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;)V
    .registers 2
    .param p1, "this$1"    # Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder$2;->this$1:Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder$2;->this$1:Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->isLoading:Z

    .line 206
    iget-object v0, p0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder$2;->this$1:Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;

    iget-object v0, v0, Lcom/koushikdutta/ion/IonDrawable$IonGifDecoder;->this$0:Lcom/koushikdutta/ion/IonDrawable;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/IonDrawable;->invalidateSelf()V

    .line 207
    return-void
.end method
