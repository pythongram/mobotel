.class Lorg/telegram/ui/Adapters/MentionsAdapter$9;
.super Ljava/lang/Object;
.source "MentionsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/String;ILjava/util/ArrayList;)V
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
        "Lorg/telegram/tgnet/TLRPC$User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

.field final synthetic val$newResultsHashMap:Ljava/util/HashMap;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "this$0"    # Lorg/telegram/ui/Adapters/MentionsAdapter;

    .prologue
    .line 683
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->val$newResultsHashMap:Ljava/util/HashMap;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->val$users:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 683
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->compare(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$User;)I
    .registers 10
    .param p1, "lhs"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "rhs"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 686
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->val$newResultsHashMap:Ljava/util/HashMap;

    iget v6, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->val$newResultsHashMap:Ljava/util/HashMap;

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    move v2, v3

    .line 702
    :cond_20
    :goto_20
    return v2

    .line 688
    :cond_21
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->val$newResultsHashMap:Ljava/util/HashMap;

    iget v6, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 690
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->val$newResultsHashMap:Ljava/util/HashMap;

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    move v2, v4

    .line 691
    goto :goto_20

    .line 693
    :cond_3f
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->val$users:Ljava/util/ArrayList;

    iget v6, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 694
    .local v0, "lhsNum":I
    iget-object v5, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$9;->val$users:Ljava/util/ArrayList;

    iget v6, p2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 695
    .local v1, "rhsNum":I
    if-eq v0, v2, :cond_63

    if-eq v1, v2, :cond_63

    .line 696
    if-lt v0, v1, :cond_20

    if-ne v0, v1, :cond_61

    move v2, v3

    goto :goto_20

    :cond_61
    move v2, v4

    goto :goto_20

    .line 697
    :cond_63
    if-eq v0, v2, :cond_67

    if-eq v1, v2, :cond_20

    .line 699
    :cond_67
    if-ne v0, v2, :cond_6d

    if-eq v1, v2, :cond_6d

    move v2, v4

    .line 700
    goto :goto_20

    :cond_6d
    move v2, v3

    .line 702
    goto :goto_20
.end method
