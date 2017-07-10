.class Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1$1;
.super Ljava/lang/Object;
.source "ShareAlert2.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1;)V
    .registers 2
    .param p1, "this$2"    # Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1;

    .prologue
    .line 791
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1$1;->this$2:Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 791
    check-cast p1, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;

    check-cast p2, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$1$1;->compare(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;)I
    .registers 5
    .param p1, "lhs"    # Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;
    .param p2, "rhs"    # Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;

    .prologue
    .line 794
    iget v0, p1, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->date:I

    iget v1, p2, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->date:I

    if-ge v0, v1, :cond_8

    .line 795
    const/4 v0, 0x1

    .line 799
    :goto_7
    return v0

    .line 796
    :cond_8
    iget v0, p1, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->date:I

    iget v1, p2, Lorg/telegram/ui/Telehgram/ShareAlert2$ShareSearchAdapter$DialogSearchResult;->date:I

    if-le v0, v1, :cond_10

    .line 797
    const/4 v0, -0x1

    goto :goto_7

    .line 799
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method
