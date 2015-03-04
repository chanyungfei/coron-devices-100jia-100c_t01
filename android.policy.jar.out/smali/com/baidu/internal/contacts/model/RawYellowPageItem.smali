.class public Lcom/baidu/internal/contacts/model/RawYellowPageItem;
.super Ljava/lang/Object;
.source "RawYellowPageItem.java"


# instance fields
.field address:Ljava/lang/String;

.field buildIn:I

.field category_id:I

.field id:Ljava/lang/String;

.field image:Ljava/lang/String;

.field name:Ljava/lang/String;

.field tels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/internal/contacts/model/TelephoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field thumbnail:Ljava/lang/String;

.field website:Ljava/lang/String;

.field weibo:Ljava/lang/String;

.field yellow_page_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBuildIn()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->buildIn:I

    return v0
.end method

.method public getCategory_id()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->category_id:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTels()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/internal/contacts/model/TelephoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->tels:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->website:Ljava/lang/String;

    return-object v0
.end method

.method public getWeibo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->weibo:Ljava/lang/String;

    return-object v0
.end method

.method public getYellow_page_id()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->yellow_page_id:I

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->address:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setBuildIn(I)V
    .locals 0
    .parameter "buildIn"

    .prologue
    .line 104
    iput p1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->buildIn:I

    .line 105
    return-void
.end method

.method public setCategory_id(I)V
    .locals 0
    .parameter "category_id"

    .prologue
    .line 80
    iput p1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->category_id:I

    .line 81
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->id:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->image:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->name:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setTels(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/internal/contacts/model/TelephoneNumber;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, tels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/internal/contacts/model/TelephoneNumber;>;"
    iput-object p1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->tels:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbnail"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->thumbnail:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 0
    .parameter "website"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->website:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setWeibo(Ljava/lang/String;)V
    .locals 0
    .parameter "weibo"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->weibo:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setYellow_page_id(I)V
    .locals 0
    .parameter "yellow_page_id"

    .prologue
    .line 24
    iput p1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->yellow_page_id:I

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RawYellowPage{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->tels:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", thumbnail=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->thumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", image=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->image:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", address=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->category_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", website=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->website:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weibo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->weibo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", buildIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/internal/contacts/model/RawYellowPageItem;->buildIn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
