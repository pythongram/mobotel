.class Lcom/koushikdutta/async/http/body/FilePart$1;
.super Ljava/util/ArrayList;
.source "FilePart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/koushikdutta/async/http/NameValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 5

    .prologue
    .line 15
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/FilePart$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v0, Lcom/koushikdutta/async/http/BasicNameValuePair;

    const-string v1, "filename"

    iget-object v2, p0, Lcom/koushikdutta/async/http/body/FilePart$1;->val$file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/async/http/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/body/FilePart$1;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method
