package com.candy.kufarAnalog.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "images")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Image {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    @Column(name = "name")
    private String name;
    @Column(name = "size")
    private Long size;
    @Column(name = "contentType")
    private String contentType;//расширение файла
    @Column(name = "originalFileName")
    private String originalFileName;
    @Column(name = "isPreviewImage")
    private boolean isPreviewImage;
    @Lob
    @Column(name = "imageData", columnDefinition = "LONGBLOB")
    private byte[] imageData;
    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    private Product product;
}
