.class Lorg/telegram/ui/Adapters/SearchAdapterHelper$2$1;
.super Ljava/lang/Object;
.source "SearchAdapterHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;->run()V
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
        "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2$1;->this$1:Lorg/telegram/ui/Adapters/SearchAdapterHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 122
    check-cast p1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    check-cast p2, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$2$1;->compare(Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;)I
    .registers 5
    .param p1, "lhs"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;
    .param p2, "rhs"    # Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    .prologue
    .line 125
    iget v0, p1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->date:I

    iget v1, p2, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->date:I

    if-ge v0, v1, :cond_8

    .line 126
    const/4 v0, 0x1

    .line 130
    :goto_7
    return v0

    .line 127
    :cond_8
    iget v0, p1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->date:I

    iget v1, p2, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->date:I

    if-le v0, v1, :cond_10

    .line 128
    const/4 v0, -0x1

    goto :goto_7

    .line 130
    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method
