.class Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1$1;
.super Ljava/lang/Object;
.source "SpecialSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1;)V
    .registers 2
    .param p1, "this$3"    # Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1;

    .prologue
    .line 953
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1$1;->this$3:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 956
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1$1;->this$3:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1;

    iget-object v11, v11, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1;->this$2:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2;

    iget-object v11, v11, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2;->val$query:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 957
    .local v7, "search1":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_28

    .line 958
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1$1;->this$3:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1;

    iget-object v11, v11, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1;->this$2:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2;

    iget-object v11, v11, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    # invokes: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v11, v12, v13}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;->access$2800(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1003
    :goto_27
    return-void

    .line 961
    :cond_28
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v11

    invoke-virtual {v11, v7}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 962
    .local v8, "search2":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3c

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_3d

    .line 963
    :cond_3c
    const/4 v8, 0x0

    .line 965
    :cond_3d
    if-eqz v8, :cond_f1

    const/4 v11, 0x1

    :goto_40
    add-int/lit8 v11, v11, 0x1

    new-array v6, v11, [Ljava/lang/String;

    .line 966
    .local v6, "search":[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v7, v6, v11

    .line 967
    if-eqz v8, :cond_4c

    .line 968
    const/4 v11, 0x1

    aput-object v8, v6, v11

    .line 971
    :cond_4c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 972
    .local v4, "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 974
    .local v5, "resultArrayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_57
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1$1;->this$3:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1;

    iget-object v11, v11, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1;->this$2:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2;

    iget-object v11, v11, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;->access$2900(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_137

    .line 975
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1$1;->this$3:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1;

    iget-object v11, v11, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1;->this$2:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2;

    iget-object v11, v11, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;->access$2900(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$User;

    .line 977
    .local v10, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v11, v12}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 978
    .local v2, "name":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v11

    invoke-virtual {v11, v2}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 979
    .local v9, "tName":Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_92

    .line 980
    const/4 v9, 0x0

    .line 983
    :cond_92
    const/4 v1, 0x0

    .line 984
    .local v1, "found":I
    array-length v12, v6

    const/4 v11, 0x0

    :goto_95
    if-ge v11, v12, :cond_ed

    aget-object v3, v6, v11

    .line 985
    .local v3, "q":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_d9

    if-eqz v9, :cond_f4

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_f4

    .line 986
    :cond_d9
    const/4 v1, 0x1

    .line 991
    :cond_da
    :goto_da
    if-eqz v1, :cond_133

    .line 992
    const/4 v11, 0x1

    if-ne v1, v11, :cond_102

    .line 993
    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v11, v12, v3}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    :goto_ea
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    .end local v3    # "q":Ljava/lang/String;
    :cond_ed
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_57

    .line 965
    .end local v0    # "a":I
    .end local v1    # "found":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .end local v5    # "resultArrayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v6    # "search":[Ljava/lang/String;
    .end local v9    # "tName":Ljava/lang/String;
    .end local v10    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_f1
    const/4 v11, 0x0

    goto/16 :goto_40

    .line 987
    .restart local v0    # "a":I
    .restart local v1    # "found":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "q":Ljava/lang/String;
    .restart local v4    # "resultArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .restart local v5    # "resultArrayNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v6    # "search":[Ljava/lang/String;
    .restart local v9    # "tName":Ljava/lang/String;
    .restart local v10    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_f4
    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v13, :cond_da

    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_da

    .line 988
    const/4 v1, 0x2

    goto :goto_da

    .line 995
    :cond_102
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "@"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "@"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ea

    .line 984
    :cond_133
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_95

    .line 1002
    .end local v1    # "found":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "q":Ljava/lang/String;
    .end local v9    # "tName":Ljava/lang/String;
    .end local v10    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_137
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1$1;->this$3:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1;

    iget-object v11, v11, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2$1;->this$2:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2;

    iget-object v11, v11, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter$2;->this$1:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;

    # invokes: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v11, v4, v5}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;->access$2800(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialSelectActivity$GroupCreateAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_27
.end method
