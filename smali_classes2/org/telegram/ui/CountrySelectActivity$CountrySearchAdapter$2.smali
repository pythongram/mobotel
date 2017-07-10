.class Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$2;
.super Ljava/lang/Object;
.source "CountrySelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->processSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

    .prologue
    .line 393
    iput-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$2;->this$1:Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$2;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 397
    iget-object v5, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$2;->val$query:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "q":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1b

    .line 399
    iget-object v5, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$2;->this$1:Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    # invokes: Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V
    invoke-static {v5, v6}, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->access$1000(Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;Ljava/util/ArrayList;)V

    .line 415
    :goto_1a
    return-void

    .line 402
    :cond_1b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v4, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/CountrySelectActivity$Country;>;"
    iget-object v5, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$2;->val$query:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "n":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$2;->this$1:Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

    # getter for: Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->countries:Ljava/util/HashMap;
    invoke-static {v5}, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->access$1100(Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 406
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/CountrySelectActivity$Country;>;"
    if-eqz v0, :cond_5c

    .line 407
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3e
    :goto_3e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 408
    .local v1, "c":Lorg/telegram/ui/CountrySelectActivity$Country;
    iget-object v6, v1, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$2;->val$query:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 409
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 414
    .end local v1    # "c":Lorg/telegram/ui/CountrySelectActivity$Country;
    :cond_5c
    iget-object v5, p0, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter$2;->this$1:Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;

    # invokes: Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V
    invoke-static {v5, v4}, Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;->access$1000(Lorg/telegram/ui/CountrySelectActivity$CountrySearchAdapter;Ljava/util/ArrayList;)V

    goto :goto_1a
.end method
