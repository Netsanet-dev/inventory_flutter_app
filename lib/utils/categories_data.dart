// Centralized category data with hierarchical structure
const Map<String, Map<String, dynamic>> categoryData = {
  'shoes': {
    'nameKey': 'category_shoes',
    'subcategories': {
      'safety_shoes': {
        'nameKey': 'subcategory_safety_shoes',
        'brands': {
          'lion': {
            'nameKey': 'brand_lion',
            'imagePath': 'assets/images/rain-boots.jpg',
          },
          'black_nile': {
            'nameKey': 'brand_black_nile',
            'imagePath': 'assets/images/ansebaraki.jpg',
          },
          'ramsey': {
            'nameKey': 'brand_ramsey',
            'imagePath': 'assets/images/socks.jpg',
          },
          'can': {'nameKey': 'brand_can'},
          'peacock': {'nameKey': 'brand_peacock'},
          'sheba': {'nameKey': 'brand_sheba'},
          'jogger': {'nameKey': 'brand_jogger'},
          'rock_lander': {'nameKey': 'brand_rock_lander'},
          'every_safe': {'nameKey': 'brand_every_safe'},
          'cat': {'nameKey': 'brand_cat'},
          'heckel': {
            'nameKey': 'brand_heckel',
            'imagePath': 'assets/images/ansebaraki.jpg',
          },
        },
      },
      'keskes': {
        'nameKey': 'subcategory_keskes',
        'brands': {
          'lion': {'nameKey': 'brand_lion'},
          'black_nile': {'nameKey': 'brand_black_nile'},
          'global': {'nameKey': 'brand_global'},
          'patterned': {'nameKey': 'brand_patterned'},
          'with_extra': {'nameKey': 'brand_with_extra'},
        },
      },
      'boots': {
        'nameKey': 'subcategory_boots',
        'brands': {
          'ranger': {'nameKey': 'brand_ranger'},
          'delta': {'nameKey': 'brand_delta'},
          'spiked': {'nameKey': 'brand_spiked'},
          'dalcha_timber': {'nameKey': 'brand_dalcha_timber'},
          'swat_timber': {'nameKey': 'brand_swat_timber'},
        },
      },
      'work_shoes': {
        'nameKey': 'subcategory_work_shoes',
        'brands': {
          'lion': {'nameKey': 'brand_lion'},
          'black_nile': {'nameKey': 'brand_black_nile'},
          'peacock': {'nameKey': 'brand_peacock'},
          'ramsey': {'nameKey': 'brand_ramsey'},
          'kangaroo': {'nameKey': 'brand_kangaroo'},
        },
      },
      'womens_shoes': {
        'nameKey': 'subcategory_womens_shoes',
        'brands': {
          'lion': {'nameKey': 'brand_lion'},
          'black_nile': {'nameKey': 'brand_black_nile'},
          'peacock': {'nameKey': 'brand_peacock'},
          'ramsey': {'nameKey': 'brand_ramsey'},
          'kangaroo': {'nameKey': 'brand_kangaroo'},
        },
      },
      'local_shoes': {
        'nameKey': 'subcategory_local_shoes',
        'brands': {
          'salam': {'nameKey': 'brand_salam'},
          'abajifar': {'nameKey': 'brand_abajifar'},
          'safety': {'nameKey': 'brand_safety'},
          'work': {'nameKey': 'brand_work'},
          'ranger': {'nameKey': 'brand_ranger'},
        },
      },
    },
  },
  'tuta': {
    'nameKey': 'category_tuta',
    'subcategories': {
      'safety_tuta': {
        'nameKey': 'subcategory_safety_tuta',
        'brands': {
          'coat': {'nameKey': 'brand_coat'},
          'pants': {'nameKey': 'brand_pants'},
          'full': {'nameKey': 'brand_full'},
          'airline': {'nameKey': 'brand_airline'},
        },
      },
      'khaki': {
        'nameKey': 'subcategory_khaki',
        'brands': {
          'dalcha': {'nameKey': 'brand_dalcha'},
        },
      },
      'printed': {
        'nameKey': 'subcategory_printed',
        'brands': {
          'dalcha': {'nameKey': 'brand_dalcha'},
          'khaki': {'nameKey': 'brand_khaki'},
          'tetran': {'nameKey': 'brand_tetran'},
          'crocs': {
            'nameKey': 'brand_crocs',
            'imagePath': 'assets/images/crocs.jpg',
          },
        },
      },
      'teteran': {
        'nameKey': 'subcategory_teteran',
        'brands': {
          'teteran': {'nameKey': 'brand_teteran'},
        },
      },
      'manchini': {
        'nameKey': 'subcategory_manchini',
        'brands': {
          'manchini': {'nameKey': 'brand_manchini'},
        },
      },
      'ventilated': {
        'nameKey': 'subcategory_ventilated',
        'brands': {
          'ventilated': {'nameKey': 'brand_ventilated'},
        },
      },
    },
  },
  'gown': {
    'nameKey': 'category_gown',
    'subcategories': {
      'hospitality_gown': {
        'nameKey': 'subcategory_hospitality_gown',
        'brands': {
          'hospitality_gown': {'nameKey': 'brand_hospitality_gown'},
        },
      },
    },
  },
  'gloves': {
    'nameKey': 'category_gloves',
    'subcategories': {
      'leather_gloves': {
        'nameKey': 'subcategory_leather_gloves',
        'brands': {
          'leather_gloves': {'nameKey': 'brand_leather_gloves'},
        },
      },
      'laser_gloves': {
        'nameKey': 'subcategory_laser_gloves',
        'brands': {
          'laser_gloves': {'nameKey': 'brand_laser_gloves'},
        },
      },
      'knitted_gloves': {
        'nameKey': 'subcategory_knitted_gloves',
        'brands': {
          'knitted_gloves': {'nameKey': 'brand_knitted_gloves'},
        },
      },
      'plastic_gloves': {
        'nameKey': 'subcategory_plastic_gloves',
        'brands': {
          'plastic_gloves': {'nameKey': 'brand_plastic_gloves'},
        },
      },
    },
  },
  'coat': {
    'nameKey': 'category_coat',
    'subcategories': {
      'wool_coat': {
        'nameKey': 'subcategory_wool_coat',
        'brands': {
          'wool_coat': {'nameKey': 'brand_wool_coat'},
        },
      },
      'fabric_coat': {
        'nameKey': 'subcategory_fabric_coat',
        'brands': {
          'fabric_coat': {'nameKey': 'brand_fabric_coat'},
        },
      },
      'local_coat': {
        'nameKey': 'subcategory_local_coat',
        'brands': {
          'local_coat': {'nameKey': 'brand_local_coat'},
        },
      },
    },
  },
  'reflective': {
    'nameKey': 'category_reflective',
    'subcategories': {
      'imported': {
        'nameKey': 'subcategory_imported',
        'brands': {
          'imported': {'nameKey': 'brand_imported'},
        },
      },
      'local': {
        'nameKey': 'subcategory_local',
        'brands': {
          'local': {'nameKey': 'brand_local'},
        },
      },
    },
  },
  'rainwear': {
    'nameKey': 'category_rainwear',
    'subcategories': {
      'coat_and_pants': {
        'nameKey': 'subcategory_coat_and_pants',
        'brands': {
          'coat_and_pants': {'nameKey': 'brand_coat_and_pants'},
        },
      },
      'full_rainwear': {
        'nameKey': 'subcategory_full_rainwear',
        'brands': {
          'full_rainwear': {'nameKey': 'brand_full_rainwear'},
        },
      },
      'thin_rainwear': {
        'nameKey': 'subcategory_thin_rainwear',
        'brands': {
          'thin_rainwear': {'nameKey': 'brand_thin_rainwear'},
        },
      },
    },
  },
  'coat_and_pants': {
    'nameKey': 'category_coat_and_pants',
    'subcategories': {
      'reflective': {
        'nameKey': 'subcategory_reflective',
        'brands': {
          'reflective': {'nameKey': 'brand_reflective'},
        },
      },
      'match': {
        'nameKey': 'subcategory_match',
        'brands': {
          'match': {'nameKey': 'brand_match'},
        },
      },
      'shirt_and_pants': {
        'nameKey': 'subcategory_shirt_and_pants',
        'brands': {
          'shirt_and_pants': {'nameKey': 'brand_shirt_and_pants'},
        },
      },
    },
  },
  'wallet': {
    'nameKey': 'category_wallet',
    'subcategories': {
      'deep': {
        'nameKey': 'subcategory_deep',
        'brands': {
          'deep': {'nameKey': 'brand_deep'},
        },
      },
      'front_and_back': {
        'nameKey': 'subcategory_front_and_back',
        'brands': {
          'front_and_back': {'nameKey': 'brand_front_and_back'},
        },
      },
      'with_coin_pocket': {
        'nameKey': 'subcategory_with_coin_pocket',
        'brands': {
          'with_coin_pocket': {'nameKey': 'brand_with_coin_pocket'},
        },
      },
    },
  },
  'cap': {
    'nameKey': 'category_cap',
    'subcategories': {
      'kitchen_cap': {
        'nameKey': 'subcategory_kitchen_cap',
        'brands': {
          'with_net': {'nameKey': 'brand_with_net'},
          'without_net': {'nameKey': 'brand_without_net'},
          'chef_cap': {'nameKey': 'brand_chef_cap'},
        },
      },
      'hat': {
        'nameKey': 'subcategory_hat',
        'brands': {
          'selene': {'nameKey': 'brand_selene'},
          'fabric': {'nameKey': 'brand_fabric'},
        },
      },
      'helmet': {
        'nameKey': 'subcategory_helmet',
        'brands': {
          'helmet': {'nameKey': 'brand_helmet'},
        },
      },
      'normal_cap': {
        'nameKey': 'subcategory_normal_cap',
        'brands': {
          'normal_cap': {'nameKey': 'brand_normal_cap'},
        },
      },
    },
  },
  'shirt': {
    'nameKey': 'category_shirt',
    'subcategories': {
      'shirt': {
        'nameKey': 'subcategory_shirt',
        'brands': {
          'white': {'nameKey': 'brand_white'},
          'black': {'nameKey': 'brand_black'},
          'blue': {'nameKey': 'brand_blue'},
        },
      },
    },
  },
  'mask': {
    'nameKey': 'category_mask',
    'subcategories': {
      'chemical_mask': {
        'nameKey': 'subcategory_chemical_mask',
        'brands': {
          'chemical_mask': {'nameKey': 'brand_chemical_mask'},
        },
      },
      'surgical_mask': {
        'nameKey': 'subcategory_surgical_mask',
        'brands': {
          'surgical_mask': {'nameKey': 'brand_surgical_mask'},
        },
      },
      'normal_mask': {
        'nameKey': 'subcategory_normal_mask',
        'brands': {
          'normal_mask': {'nameKey': 'brand_normal_mask'},
        },
      },
    },
  },
  'jacket': {
    'nameKey': 'category_jacket',
    'subcategories': {
      'safety_jacket': {
        'nameKey': 'subcategory_safety_jacket',
        'brands': {
          'safety_jacket': {'nameKey': 'brand_safety_jacket'},
        },
      },
      'reflective_jacket': {
        'nameKey': 'subcategory_reflective_jacket',
        'brands': {
          'reflective_jacket': {'nameKey': 'brand_reflective_jacket'},
        },
      },
      'normal_jacket': {
        'nameKey': 'subcategory_normal_jacket',
        'brands': {
          'normal_jacket': {'nameKey': 'brand_normal_jacket'},
        },
      },
    },
  },
  'belt': {
    'nameKey': 'category_belt',
    'subcategories': {
      'leather_belt': {
        'nameKey': 'subcategory_leather_belt',
        'brands': {
          'leather_belt': {'nameKey': 'brand_leather_belt'},
        },
      },
      'canvas_belt': {
        'nameKey': 'subcategory_canvas_belt',
        'brands': {
          'canvas_belt': {'nameKey': 'brand_canvas_belt'},
        },
      },
    },
  },
  'socks': {
    'nameKey': 'category_socks',
    'subcategories': {
      'long_socks': {
        'nameKey': 'subcategory_long_socks',
        'brands': {
          'long_socks': {'nameKey': 'brand_long_socks'},
        },
      },
      'short_socks': {
        'nameKey': 'subcategory_short_socks',
        'brands': {
          'short_socks': {'nameKey': 'brand_short_socks'},
        },
      },
    },
  },
  'glasses': {
    'nameKey': 'category_glasses',
    'subcategories': {
      'welding_glasses': {
        'nameKey': 'subcategory_welding_glasses',
        'brands': {
          'welding_glasses': {'nameKey': 'brand_welding_glasses'},
        },
      },
      'dust_glasses': {
        'nameKey': 'subcategory_dust_glasses',
        'brands': {
          'dust_glasses': {'nameKey': 'brand_dust_glasses'},
        },
      },
      'sunglasses': {
        'nameKey': 'subcategory_sunglasses',
        'brands': {
          'sunglasses': {'nameKey': 'brand_sunglasses'},
        },
      },
    },
  },
};
