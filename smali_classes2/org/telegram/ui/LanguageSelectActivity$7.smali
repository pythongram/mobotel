.class Lorg/telegram/ui/LanguageSelectActivity$7;
.super Ljava/lang/Object;
.source "LanguageSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LanguageSelectActivity;->processSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LanguageSelectActivity;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LanguageSelectActivity;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lorg/telegram/ui/LanguageSelectActivity;

    .prologue
    .line 234
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$7;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iput-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$7;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 238
    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity$7;->val$query:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "q":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1b

    .line 240
    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity$7;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    # invokes: Lorg/telegram/ui/LanguageSelectActivity;->updateSearchResults(Ljava/util/ArrayList;)V
    invoke-static {v3, v6}, Lorg/telegram/ui/LanguageSelectActivity;->access$900(Lorg/telegram/ui/LanguageSelectActivity;Ljava/util/ArrayList;)V

    .line 253
    :goto_1a
    return-void

    .line 243
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 244
    .local v4, "time":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v2, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/LocaleController$LocaleInfo;>;"
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/LocaleController;->sortedLanguages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2e
    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 247
    .local v0, "c":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    iget-object v6, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/LanguageSelectActivity$7;->val$query:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_56

    iget-object v6, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/LanguageSelectActivity$7;->val$query:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 248
    :cond_56
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 252
    .end local v0    # "c":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_5a
    iget-object v3, p0, Lorg/telegram/ui/LanguageSelectActivity$7;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # invokes: Lorg/telegram/ui/LanguageSelectActivity;->updateSearchResults(Ljava/util/ArrayList;)V
    invoke-static {v3, v2}, Lorg/telegram/ui/LanguageSelectActivity;->access$900(Lorg/telegram/ui/LanguageSelectActivity;Ljava/util/ArrayList;)V

    goto :goto_1a
.end method
