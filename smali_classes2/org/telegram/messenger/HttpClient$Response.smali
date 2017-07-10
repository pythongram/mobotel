.class public Lorg/telegram/messenger/HttpClient$Response;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public code:I

.field public cookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p3, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lorg/telegram/messenger/HttpClient$Response;->code:I

    .line 32
    iput-object p2, p0, Lorg/telegram/messenger/HttpClient$Response;->text:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lorg/telegram/messenger/HttpClient$Response;->cookies:Ljava/util/List;

    .line 34
    return-void
.end method
